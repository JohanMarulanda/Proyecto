from django.urls import path, re_path
from .views import crear_publicacion, listar_publicacion, eliminar_publicacion, detalles_pregunta, responder_preguntas
from .views import add_comment_to_question

urlpatterns = [
    path('crear_publicacion/', crear_publicacion, name='crear_publicacion'),
    path('listar_publicacion/<int:id>', listar_publicacion, name='listar_publicacion'),
    path('<pk>/eliminar/', eliminar_publicacion, name='eliminar_publicacion'),
    path('look/<int:id>/', detalles_pregunta, name='detalles_pregunta'),
    path('comment/<int:id>', add_comment_to_question,
            name='add_comment_to_question'),
    path('responder_preguntas/<int:num>', responder_preguntas, name='responder_preguntas'),
]
