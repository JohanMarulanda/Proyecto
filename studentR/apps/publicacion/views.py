from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.shortcuts import render, get_object_or_404, redirect
from .forms import PreguntaForm
from .models import Pregunta
from django.contrib import messages
# Create your views here.


def formularioPreguntas(request):
    preguntas = Pregunta.objects.all()
    return render(request, 'preguntas/buscarPreguntas.html', {'preguntas': pregunta})

def crear_publicacion(request):
    print("Hola, estoy entrando a la funcion")
    if request.method == 'POST':
        print("Efectivamente mi garra, el metodo es un post")
        pregunta_form = PreguntaForm(request.POST)
        if pregunta_form.is_valid():
            print("Y si, el form es válido")
            pregunta_form.save()
            return redirect('index')
    else:
        print("nope, el método no es un post bruh :c")
        pregunta_form = PreguntaForm()
    return render(request, 'preguntas/crear_pregunta.html', {'pregunta_form': pregunta_form})
