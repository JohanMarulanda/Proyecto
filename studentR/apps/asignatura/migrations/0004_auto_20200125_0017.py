# Generated by Django 2.2.6 on 2020-01-25 05:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('asignatura', '0003_recomendacion'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='recomendacion',
            table='asignatura_recomendacion',
        ),
    ]
