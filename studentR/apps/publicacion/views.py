from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.shortcuts import render, get_object_or_404, redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .forms import PreguntaForm, CommentForm
from .models import Pregunta
from django.contrib import messages
from django.db.models import Q
# Create your views here.

#Vista para acceder a todas las preguntas realizadas
def formularioPreguntas(request):
    preguntas = Pregunta.objects.all()
    return render(request, 'preguntas/buscarPreguntas.html', {'preguntas': pregunta})


#Vistas para crear una pregunta de una carrera específica, verifica si el form es válido y crea la pregunta de ser así
def crear_publicacion(request):
    if not request.user.is_authenticated:
        raise Http404

    if request.method == 'POST':
        pregunta_form = PreguntaForm(request.POST)
        if pregunta_form.is_valid():
            pregunta_form.save()
            messages.success(request, "Successfully Created")
            return redirect('index')
    else:
        pregunta_form = PreguntaForm()
    return render(request, 'preguntas/crear_pregunta.html', {'pregunta_form': pregunta_form})


#Función para eliminar una publicación
def eliminar_publicacion(request, id):
    preg = get_object_or_404(Pregunta, pk=id)
    preg.delete()
    return redirect('listar_publicacion')
    

#Función para listar todas las publicaciones de un usuario
def listar_publicacion(request, id):
    queryset_list = Pregunta.objects.filter(id_user=id, activo=True)
    if request.user.is_staff or request.user.is_superuser:
        queryset_list = Pregunta.objects.all()

    query = request.GET.get("q")
    if query:
        queryset_list = queryset_list.filter(
            Q(pregunta__icontains=query) |
            Q(descripcion__icontains=query) |
            Q(carrera__icontains=query) |
            Q(asignatura__icontains=query)
        ).distinct()

    paginator = Paginator(queryset_list, 8)
    page_request_var = "page"
    page = request.GET.get(page_request_var)

    try:
        queryset = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer, deliver first page.
        queryset = paginator.page(1)
    except EmptyPage:
        # If page is out of range (e.g. 9999), deliver last page of results.
         queryset = paginator.page(paginator.num_pages)

    return render(request, "preguntas/listar_preguntas.html", {'queryset_list': queryset_list})


#Funcion para visualizar los detalles de una pregunta en específico (si es que existe)
def detalles_pregunta(request, id):
    preg = get_object_or_404(Pregunta, pk=id)
    return render(request, 'preguntas/detalles_pregunta.html', {'preg': preg})


#Funcion para añadir comentarios de una asignatura en específico
def add_comment_to_question(request, id):
    preg = get_object_or_404(Pregunta, pk=id)
    if request.method == "POST":
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.pregunta = preg
            comment.save()
            return redirect('detalles_pregunta', preg.id)
    else:
        form = CommentForm()
    return render(request, 'preguntas/add_comment_to_question.html', {'form': form})


def responder_preguntas(request, num):
    queryset_list = Pregunta.objects.exclude(id_user=num)

    return render(request, "preguntas/responder_preguntas.html", {'queryset_list': queryset_list})

