from django.db import models

# Create your models here.

class Pregunta(models.Model):
    id_user = models.IntegerField(primary_key=True)
    pregunta = models.TextField(max_length=500, default='')
    descripcion = models.TextField(max_length=1000, default='')
    carrera = models.CharField(max_length=500, default='')
    asignatura = models.CharField(max_length=500, default='')

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.id_user
