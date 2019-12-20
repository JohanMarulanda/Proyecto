from django.shortcuts import render
from .forms import PreguntaForm
from .models import Pregunta
# Create your views here.


def formularioPreguntas(request):
    preguntas = Pregunta.objects.all()
    return render(request, 'preguntas/buscarPreguntas.html', {'preguntas': pregunta})
