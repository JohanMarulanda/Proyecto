from django.shortcuts import render, redirect
from .forms import AsignaturaForm, ComentarioForm
from .models import asignaturaProf, Comentario, activo
from django.db.models import Q
from django.core.paginator import Paginator
#from textblob import TextBlob
import time

from ibm_watson import NaturalLanguageUnderstandingV1
from ibm_watson.natural_language_understanding_v1 import Features, SentimentOptions, EmotionOptions
import json
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator
from django.contrib import messages

import numpy as np
from sklearn.metrics import confusion_matrix
from scipy.stats import pearsonr
from scipy.stats import spearmanr
import math

# Create your views here.

# ESTA FUNCIÓN MUESTRA LA PÁGINA PRINCIPAL


def Home(request):
    return render(request, 'index.html')

# ESTA FUNCIÓN MUESTRA LA PÁGINA PRINCIPAL DE UN USUARIO LOGEADO


def principalUser(request):
    return render(request, 'users/principalUser.html')

# ESTA FUNCIÓN MUESTRA EL FORMULARIO PARA CUANDO BUSCA UNA ASIGNATURA


def formularioBusqueda(request):
    asignatura = asignaturaProf.objects.values('nombre').distinct()
    return render(request, 'users/formularioBusqueda.html', {'asignaturas': asignatura})

# ESTA FUNCIÓN ES LA ENCARGADA DE CREAR UNA ASIGNATURA CON LOS DATOS QUE NOS DÉN (AUN NO ESTÁ EN USO)


def crearAsignatura(request):
    if request.method == 'POST':
        asignatura_form = AsignaturaForm(request.POST)
        if asignatura_form.is_valid():
            asignatura_form.save()
            return redirect('index')
    else:
        asignatura_form = AsignaturaForm()
    return render(request, 'asignatura/crear_asignatura.html', {'asignatura_form': asignatura_form})

# ESTA ES LA FUNCIÓN QUE MUESTRA TODOS LOS DOCENTES EN LA PAGINA DE AÑADIR COMENTARIO


def show(request):
    queryset = request.GET.get("buscar")
    asignatura = asignaturaProf.objects.all()
    if queryset:
        asignatura = asignaturaProf.objects.filter(
            Q(docente__icontains=queryset)
        )

    paginator = Paginator(asignatura, 10)
    page = request.GET.get('page')
    asignatura = paginator.get_page(page)
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

# FUNCIÓN ENCARGADA DE AÑADIR UN COMENTARIO


def edit(request, id):
    asignatura = asignaturaProf.objects.get(id=id)
    return render(request, 'asignatura/añadir_comentario.html', {'asignatura': asignatura})


# FUNCIÓN QUE REALIZA EL COMENTARIO
def añadirComentario(request, id):
    if request.method == 'POST':
        coment = request.POST.get('comentario')
        print("EL COMENTARIO QUE RECIBO ES : ")
        print(coment)
        asig_id = asignaturaProf.objects.get(id=id)

        authenticator = IAMAuthenticator(
            'GwzfwCz9fEiuRTsJ5a6YW84Wkrr2vfU14_I_F7D8oz01')
        service = NaturalLanguageUnderstandingV1(version='2018-03-16',
                                                 authenticator=authenticator)
        service.set_service_url(
            'https://gateway.watsonplatform.net/natural-language-understanding/api')

        response = service.analyze(text=coment,
                                   features=Features(sentiment=SentimentOptions())).get_result()

        res = response.get('sentiment').get('document').get('score')
        print(res)
        c = Comentario(asignatura_id=asig_id, comentario=coment, polaridad=res)
        c.save()
        return redirect('principalUser')
    return show(request)


# Esta función recibe el nombre de un docente, y comprueba en la base de datos, si el docente se encuentra entre los docentes activos
def esActivo(nombreDocente):
    respuesta = activo.objects.filter(nombre=nombreDocente).exists()
    if respuesta:
        return True
    else:
        return False

# Esta función recibe las listas con los resultados de los docentes y los nombres, y obtiene el nombre del docente
# que se encuentra en la posición en que mayor número se obtuvo y además está activo en la bd


def eliminaDatos(listaD, listaR):
    listaD_nueva = []
    listaR_nueva = []
    for i in listaR:
        if i not in listaR_nueva:
            listaR_nueva.append(i)
            listaD_nueva.append(listaD[listaR.index(i)])
    return listaD_nueva, listaR_nueva

def mayorActivo(listaD, listaR):
    maximo = max(listaR)
    for i in range(len(listaR)):
        if listaR[i] == maximo:
            if esActivo(listaD[i]):
                return listaD[i]
            else:
                listaD.pop(i)
                listaR.pop(i)
                mayorActivo(listaD, listaR)


def recomendador(listaDocentes, listaRespuestas):
    maximo = max(listaRespuestas)
    print("EL NUMERO MAXIMO DE LA LISTA ES : ")
    print(maximo)
    if len(listaRespuestas) == 1:
        if esActivo(listaDocentes[0]):
            print("PRIMER CASO, VOY A RETORNAR: ")
            print(listaDocentes[0])
            return listaDocentes[0]
        else:
            print("SEGUNDO CASO, VOY A RETORNAR: ")
            print("LO SENTIMOS, NO EXISTEN DATOS EN LA BASE")
            return "LO SENTIMOS, NO EXISTEN DATOS EN LA BASE DE DATOS PARA RECOMENDAR UN DOCENTE DE ESTA ASIGNATURA"
    elif listaRespuestas.count(maximo) > 1:
        print("TERCER CASO, VOY A RETORNAR: ")
        print(mayorActivo(listaDocentes, listaRespuestas))
        return mayorActivo(listaDocentes,listaRespuestas)
    elif esActivo(listaDocentes[listaRespuestas.index(max(listaRespuestas))]):
        variable = listaDocentes[listaRespuestas.index(max(listaRespuestas))]
        print("CUARTO CASO, VOY A RETORNAR: ")
        print(variable)
        return variable
    else:
        posicion = listaRespuestas.index(max(listaRespuestas))
        listaDocentes.pop(posicion)
        listaRespuestas.pop(posicion)
        recomendador(listaDocentes, listaRespuestas)


# DE AQUI PARA ABAJO SON METODOS PARA HACER SPEARMAN
def calculaDiferencia(lista1, lista2):
    resp = []
    for i in range(len(lista1)):
        resp.append(lista1[i] - lista2[i])
    return resp


def vectorCuadrado(lista):
    resp = []
    for i in range(len(lista)):
        resp.append(lista[i] ** 2)
    return resp


def calculaSuma(lista):
    resp = 0
    for i in range(len(lista)):
        resp = resp + lista[i]
    return resp


def matrizConfusion(request):
    if request.method == 'POST':
        asig = request.POST.get('asignatura_escogida')
        q1 = float('0' + request.POST.get('pregunta1'))
        q2 = float('0' + request.POST.get('pregunta2'))
        q3 = float('0' + request.POST.get('pregunta3'))
        q4 = float('0' + request.POST.get('pregunta4'))
        q5 = float('0' + request.POST.get('pregunta5'))
        q6 = float('0' + request.POST.get('pregunta6'))
        q7 = float('0' + request.POST.get('pregunta7'))
        q8 = float('0' + request.POST.get('pregunta8'))

        cuestionario = [q1, q2, q3, q4, q5, q6, q7, q8]
        print(asig)
        bd = asignaturaProf.objects.filter(nombre=asig)
        docente = []
        respuestas = []
        for i in bd:
            first = (float(i.p9) + float(i.p10))/2
            second = (float(i.p19) + float(i.p11) + float(i.p12))/3
            fifth = (float(i.p14) + float(i.p18))/2
            seventh = (float(i.p16) + float(i.p18))/2
            preguntas = [first, second, float(i.p10),
                         float(i.p12), fifth, float(i.p15), seventh, float(i.p20)]

            dif = calculaDiferencia(cuestionario, preguntas)
            vec = vectorCuadrado(dif)
            spear = 1 - ((6 * calculaSuma(vec))/((len(vec) ** 3) - len(vec)))
            #AQUI VOY A SACAR LO QUE SEA QUE TENGA EN COMENTARIOS SI ES QUE EXISTEN COMENTARIOS DEL DOCENTE, LO PROMEDIO Y LO SUMO CON  
            # EL RESULTADO QUE TENGA DE HACER SPEAR
            resp = asignaturaProf.objects.filter(nombre=asig, docente=i.docente)
            coment = 0
            cantidad = 0
            for j in resp:
                hayComentarios = Comentario.objects.filter(asignatura_id=j.id).exists()
                if hayComentarios:
                    dato = Comentario.objects.filter(asignatura_id=j.id)
                    for k in dato:
                        cantidad = cantidad + 1
                        coment = coment + k.polaridad
            
            #print("SPEAR SIN AÑADIR LOS COMENTARIOS DEL DOCENTE VALE : ")
            #print(spear)
            #print("SPEAR AÑADIENDO COMENTARIOS VALE : ")
            if cantidad == 0:
                spear = spear + float(coment)
            else:
                spear = spear + float(coment/cantidad)
            print(spear)
            docente.append(i.docente)
            respuestas.append(spear)


        print("ESTA ES LA LISTA DE DOCENTES : ")
        print(docente)
        print("ESTA ES LA LISTA DE RESPUESTAS: ")
        print(respuestas)
        resultado = recomendador(docente, respuestas)
        print("ESTO ES LO QUE OBTENGO AL FINAL DE TODOOO: ")
        print(resultado)
        messages.success(request, resultado)

        #return redirect('principalUser')
    return render(request, "users/formularioBusqueda.html", {})
