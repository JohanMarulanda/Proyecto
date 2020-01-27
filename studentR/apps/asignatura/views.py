from django.shortcuts import render, redirect
from .forms import AsignaturaForm, ComentarioForm, RecomendacionForm
from .models import asignaturaProf, Comentario, activo, Recomendacion
from django.db.models import Q
import time

#Librerias necesarias para realizar el analisis de sentimiento de los comentarios
from ibm_watson import NaturalLanguageUnderstandingV1
from ibm_watson.natural_language_understanding_v1 import Features, SentimentOptions, EmotionOptions
import json
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator
from django.contrib import messages

import math
from django.views.generic.detail import DetailView
from django.contrib.auth.decorators import login_required
import random
from django.http import HttpResponse
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
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

# FUNCIÓN RETORNA UN RENDER CUYO CONTEXTO ES SON LA BUSQUEDA DE DATOS DE ASIGNATURA DE UN DOCENTE ESPECÍFICO 


def edit(request, id):
    asignatura = asignaturaProf.objects.get(id=id)
    return render(request, 'asignatura/añadir_comentario.html', {'asignatura': asignatura})


# FUNCIÓN QUE REALIZA EL COMENTARIO SOBRE UN DOCENTE, EXTRAE LA POLARIDAD DE ESE COMENTARIO Y LO ALMACENA JUNTO CON SU COMENTARIO
def añadirComentario(request, id):
    if request.method == 'POST':
        coment = request.POST.get('comentario')
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


#En esta función se aplica el tipo de ordenado burbuja, para los resultados obtenidos de aplicar spearman y dejar ordenados a los docentes 
# en cuanto a su mayor correlación
def bubbleSort(listaRespuestas, listaDocentes):
    for recorrido in range(1,len(listaRespuestas)):
        for posicion in range(len(listaRespuestas) - recorrido):
            if listaRespuestas[posicion] < listaRespuestas[posicion + 1]:
                temporalRespuesta = listaRespuestas[posicion]
                temporalDocente = listaDocentes[posicion]

                listaRespuestas[posicion] = listaRespuestas[posicion + 1]
                listaRespuestas[posicion + 1] = temporalRespuesta

                listaDocentes[posicion] = listaDocentes[posicion + 1]
                listaDocentes[posicion + 1] = temporalDocente
    return listaRespuestas,listaDocentes


#Funcion que elimina los elementos repetidos en las listas de recomendación docente
def eliminaIguales(listaRespuestas, listaDocentes):
    newListaDocentes = []
    newListaRespuestas = []
    for i in listaDocentes:
        if i not in newListaDocentes:
            newListaDocentes.append(i)
            newListaRespuestas.append(listaRespuestas[listaDocentes.index(i)])
    return newListaRespuestas,newListaDocentes


#Funcion que elimina los docentes que no estén activos en la lista de docentes, Esto es para pasar ya la recomendación final
def eliminaInactivos(listaDocentes):
    newListaDocentes = []
    for i in listaDocentes:
        if esActivo(i):
            newListaDocentes.append(i)
    return newListaDocentes


#PROBAANNDOOOO EL POPPOPPUPPPP
class RecomendacionDocente(DetailView):
    model = Recomendacion
    template_name = 'top_docentes.html'
    context_object_name = 'objeto'


#FUNCION PRINCIPAL ENCARGADA DE REALIZAR LA RECOMENDACIÓN DE DOCENTES
def matrizConfusion(request):
    if request.method == 'POST':
        asig = request.POST.get('asignatura_escogida')
        #PRIMERO OBTENEMOS TODOS LOS DATOS PROPORCIONADOS POR EL ESTUDIANTE
        q1 = float('0' + request.POST.get('pregunta1'))
        q2 = float('0' + request.POST.get('pregunta2'))
        q3 = float('0' + request.POST.get('pregunta3'))
        q4 = float('0' + request.POST.get('pregunta4'))
        q5 = float('0' + request.POST.get('pregunta5'))
        q6 = float('0' + request.POST.get('pregunta6'))
        q7 = float('0' + request.POST.get('pregunta7'))
        q8 = float('0' + request.POST.get('pregunta8'))

        cuestionario = [q1, q2, q3, q4, q5, q6, q7, q8]
        #REALIZAMOS LA BUSQUEDA DE DATOS DE DOCENTES QUE DICTEN LA ASIGNATURA SELECCIONADA POR EL ESTUDIANTE
        bd = asignaturaProf.objects.filter(nombre=asig)
        docente = []
        respuestas = []
        for i in bd:
            #PARA CADA ITEM DE LA PREGUNTA, HACEMOS LA RELACIÓN CON LAS PREGUNTAS DOCENTE
            first = (float(i.p9) + float(i.p10))/2
            second = (float(i.p19) + float(i.p11) + float(i.p12))/3
            fifth = (float(i.p14) + float(i.p18))/2
            seventh = (float(i.p16) + float(i.p18))/2
            preguntas = [first, second, float(i.p10),
                         float(i.p12), fifth, float(i.p15), seventh, float(i.p20)]


            #APLICAMOS EL COEFICIENTE DE CORRELACION DE SPEARMAN ENTRE LOS DATOS PROPORCIONADOS POR EL ESTUDIANTE Y LAS PREGUNTAS RELACIONADAS A
            #CALIFICACION DOCENTE DE CADA DOCENTE
            dif = calculaDiferencia(cuestionario, preguntas)
            vec = vectorCuadrado(dif)
            spear = 1 - ((6 * calculaSuma(vec))/((len(vec) ** 3) - len(vec)))
            #LUEGO DE HACER EL COEFICIENTE DE CONRRELACION DE SPEARMAN, SE MIRA SI DE ESE DOCENTE, EN LA ASIGNATURA ESPECÍFICA LOS ESTUDIANTES HAN
            #REALIZADO COMENTARIOS, SI LOS HAN HECHO, SE REALIZA EL PROMEDIO DE TODOS LOS COMENTARIOS Y SE AÑADE AL COEFICIENTE DE CORRELACIÓN
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
            
            if cantidad == 0:
                spear = spear + float(coment)
            else:
                spear = spear + float(coment/cantidad)
            docente.append(i.docente)
            respuestas.append(spear)

        #SE ORDENAN LOS RESULTADOS OBTENIDOS DE MAYOR A MENOR JUNTO CON LOS RESPECTIVOS NOMBRES DE LOS DOCENTES
        r, d = bubbleSort(respuestas,docente)

        #SE ELIMINAN LOS DOCENTES QUE ESTÉN COMPITIENDO POR HABER OBTENIDO UNA BUENA CORRELACIÓN EN MÁS DE UN PERIODO
        re, do = eliminaIguales(r,d)
        
        #AHORA SE ELIMINAN LOS DOCENTES QUE SE ENCUENTREN INACTIVOS (DOCENTES QUE YA NO DÁN CLASE EN LA SEDE)
        docentesFinales = eliminaInactivos(do)

        #Luego de la eliminación de docentes inactivos, se revisa si en la lista aún hay docentes para recomendar, si no los hay se retorna
        #un mensaje indicandolo
        if len(docentesFinales) == 0:
            resultado = "LO SENTIMOS, NO EXISTEN DATOS EN LA BASE DE DATOS PARA RECOMENDAR UN DOCENTE DE ESTA ASIGNATURA"
            messages.success(request, resultado)
            return render(request, "users/formularioBusqueda.html", {})
        else:
            #Si existen docentes, miramos si este docente ya ha sido recomendado antes y le sumamos 1 a su recomendacion (esto para las gráficas en
            # la sección de administrador)
            for i in docentesFinales:
                existeRecomendacion = Recomendacion.objects.filter(asignatura=asig, profesor=i).exists()
                if existeRecomendacion:
                    agregar = Recomendacion.objects.get(asignatura=asig, profesor=i)
                    agregar.top = agregar.top + 1
                    agregar.save()
                else:
                    recomend = Recomendacion(asignatura=asig, profesor=i, top=1)
                    recomend.save()
            #Mandamos el listado de docentes al template para mostrarlo
            return render(request, "users/top_docentes.html", {'docentesFinales': docentesFinales})
    else:
        return render(request, "users/formularioBusqueda.html", {})


#ESTA FUNCION REALIZA UNA BUSQUEDA EN LAS RECOMENDACIONES REALIZADAS Y RETORNA LOS DATOS EN FORMA DE JSON
@login_required
def datosDocentes(request):
    datosDocentes = Recomendacion.objects.all()
    
    lab = []
    datos = []
    backgound = []
    border = []
    for item in datosDocentes:
        lab.append(item.profesor)
        datos.append(item.top)
        r = lambda: random.randint(0,255)
        r = lambda: random.randint(0,255)
        backgound.append('#%02X%02X%02X' % (r(), r(), r()))
        border.append('#%02X%02X%02X' % (r(), r(), r()))

    context = {
        "type": "horizontalBar",
        "data": {
            "labels": lab,
            "datasets": [{
            "label": '# de Recomendaciones',
            "data": datos,
            "backgroundColor": backgound,
            "borderColor": border,
            "borderWidth": 1,
            }]
        }
    }
    return HttpResponse(json.dumps(context), content_type='application/json; utf-8')
