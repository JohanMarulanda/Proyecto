from django import forms
from .models import asignaturaProf
from .models import Comentario
from .models import activo
from .models import Recomendacion


class AsignaturaForm(forms.ModelForm):
    class Meta:
        model = asignaturaProf
        fields = ['docente', 'periodo', 'nombre', 'grupo', 'matriculados',
                  'evaluaron', 'p9', 'p10', 'p11', 'p12', 'p13', 'p14', 'p15', 'p16', 'p17', 'p18', 'p19', 'p20', 'promedio']


class ComentarioForm(forms.ModelForm):
    class Meta:
        model = Comentario
        fields = ['asignatura_id', 'comentario', 'polaridad']


class ActivoForm(forms.ModelForm):
    class Meta:
        model = activo
        fields = ['nombre']


class RecomendacionForm(forms.ModelForm):
    class Meta:
        model = Recomendacion
        fields = ['asignatura', 'profesor', 'top']

