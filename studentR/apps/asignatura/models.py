from django.db import models

# Create your models here.


class asignaturaProf(models.Model):
    id = models.AutoField(primary_key=True)
    docente = models.CharField(max_length=255, default='')
    periodo = models.CharField(max_length=255, default='')
    nombre = models.CharField(max_length=255, default='')
    grupo = models.IntegerField(default=0)
    matriculados = models.IntegerField(default=0)
    evaluaron = models.IntegerField(default=0)
    p9 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p10 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p11 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p12 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p13 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p14 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p15 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p16 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p17 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p18 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p19 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    p20 = models.DecimalField(max_digits=3, decimal_places=2, default=0)
    promedio = models.DecimalField(max_digits=3, decimal_places=2, default=0)

    class Meta:
        db_table = 'asignatura_asignaturaprof'
        

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.nombre


class Comentario(models.Model):
    id = models.AutoField(primary_key=True)
    asignatura_id = models.ForeignKey(asignaturaProf, on_delete=models.CASCADE)
    comentario = models.TextField(max_length=1000, default='')
    polaridad = models.DecimalField(max_digits=3, decimal_places=2, default=0)

    class Meta:
        verbose_name = 'Comentario'
        verbose_name_plural = 'Comentarios'

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.id


class activo(models.Model):
    id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=255, default='')

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.nombre

class Recomendacion(models.Model):
    id = models.AutoField(primary_key=True)
    asignatura = models.CharField(max_length=255, default='')
    profesor = models.CharField(max_length=255, default='')
    top = models.IntegerField()

    class Meta:
        db_table = 'asignatura_recomendacion'

    def __str__(self):
        # Django usa esto cuando necesita convertir objecs a string
        return self.id
