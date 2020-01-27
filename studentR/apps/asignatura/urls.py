from django.urls import path
from .views import crearAsignatura, añadirComentario, edit, formularioBusqueda, matrizConfusion, RecomendacionDocente

urlpatterns = [
    path('crear_asignatura/', crearAsignatura, name = 'crear_asignatura'),
    path('añadir_comentario/<int:id>', añadirComentario, name='añadir_comentario'),
    path('edit/<int:id>', edit, name='edit'),
    path('formularioBusqueda/', formularioBusqueda, name='formularioBusqueda'),
    path('matrizConfusion/', matrizConfusion, name='matrizConfusion'),
    path('top_docentes/', RecomendacionDocente.as_view(), name='top_docentes'),
]
