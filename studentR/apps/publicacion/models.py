from django.db import models
from django.utils import timezone
import datetime
# Create your models here.

class Pregunta(models.Model):
    id = models.AutoField(primary_key=True)
    id_user = models.IntegerField()
    pregunta = models.CharField(max_length=500)
    descripcion = models.TextField()
    carrera = models.CharField(max_length=500)
    asignatura = models.CharField(max_length=500)
    activo = models.BooleanField(default=True)

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.id


class Comment(models.Model):
    pregunta = models.ForeignKey('publicacion.Pregunta', on_delete=models.CASCADE, related_name="comments")
    autor = models.CharField(max_length=200)
    text = models.TextField()
    created_date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.text
