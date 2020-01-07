from django import forms
from .models import Pregunta, Comment


class PreguntaForm(forms.ModelForm):
    class Meta:
        model = Pregunta
        fields = ['id_user', 'pregunta',
                  'descripcion', 'carrera', 'asignatura']


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['autor', 'text']
