from django.urls import path
from .views import crear_publicacion

urlpatterns = [
    path('crear_publicacion/', crear_publicacion, name='crear_publicacion'),
]
