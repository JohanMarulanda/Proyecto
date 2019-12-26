"""studentR URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include, re_path
from apps.asignatura.views import Home
from apps.asignatura.views import show
from apps.asignatura.views import principalUser
from django.contrib.auth.decorators import login_required
from apps.usuario.views import Login, logoutUsuario, Inicio, RegistroUsuario, edit_profile
from django.contrib.auth.views import PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView, PasswordResetCompleteView
#from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('asignatura/', include('apps.asignatura.urls')),
    path('publicacion/', include('apps.publicacion.urls')),
    path('home/', Home, name = 'index'),
    path('principalUser/', login_required(principalUser), name='principalUser'),
    path('docente/', show, name = 'show'),
    path('',login_required(Inicio.as_view()), name = 'index'),
    path('accounts/login/',Login.as_view(), name = 'login'),
    path('logout/',login_required(logoutUsuario),name = 'logout'),
    path('register/', RegistroUsuario.as_view(), name='register'),
    path('reset/password_reset', PasswordResetView.as_view(template_name='registration/password_reset_form.html', email_template_name="registration/password_reset_email.html"), name = 'password_reset'),
    path('reset/password_reset_done', PasswordResetDoneView.as_view(template_name='registration/password_reset_done.html'), name = 'password_reset_done'),
    re_path(r'^reset/(?P<uidb64>[0-9A-za-z_\-]+)/(?P<token>.+)/$', PasswordResetConfirmView.as_view(template_name='registration/password_reset_confirm.html'), name = 'password_reset_confirm'),
    path('reset/done',PasswordResetCompleteView.as_view(template_name='registration/password_reset_complete.html') , name = 'password_reset_complete'),
    path('edit_profile/', edit_profile, name = 'edit_profile')
]

#if settings.DEBUG:
#    urlpatterns = urlpatterns + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
#    urlpatterns = urlpatterns + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
