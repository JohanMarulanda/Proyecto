from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.utils.decorators import method_decorator
from django.views.decorators.cache import never_cache
from django.views.decorators.csrf import csrf_protect
from django.views.generic.edit import FormView
from django.contrib.auth import login, logout, authenticate
from django.http import HttpResponseRedirect
from .forms import FormularioLogin
from django.views.generic import TemplateView, CreateView

from apps.usuario.forms import RegistroForm
from django.contrib.auth.models import User
from django.urls import reverse
from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required


#Función login encargada de validar si un usuario es un administrador o un usuario normal, y mandar su respectiva vista.
class Login(FormView):
    template_name = 'login.html'
    form_class = FormularioLogin
    success_url = success_url = reverse_lazy('index')
    @method_decorator(csrf_protect)
    @method_decorator(never_cache)
    def dispatch(self, request, *args, **kwargs):
        if self.request.user.is_authenticated:
            if self.request.user.is_staff:
                self.success_url = reverse_lazy('administrador')
            return HttpResponseRedirect(self.get_success_url())
    
        else:
            return super(Login, self).dispatch(request, *args, **kwargs)

    def form_valid(self, form):
        usuario = authenticate(username=form.cleaned_data.get('username'), password=form.cleaned_data.get('password'))
        if usuario is not None:
            if usuario.is_staff:
                self.success_url = reverse_lazy('administrador')
        
        login(self.request, form.get_user())
        return super(Login, self).form_valid(form)


def logoutUsuario(request):
    logout(request)
    return HttpResponseRedirect('/accounts/login/')


class Inicio(TemplateView):
    template_name = 'users/principalUser.html'


class adminInicio(TemplateView):
    template_name = 'users/adminUser.html'


class estadisticasAdministrador(TemplateView):
    template_name = 'users/graficaDocentes.html'


class RegistroUsuario(CreateView):
    model = User
    template_name = "register.html"
    form_class = RegistroForm
    success_url = reverse_lazy('principalUser')


#Funcion para editar el perfil de un usuario
@login_required
def edit_profile(request):
    if request.method == 'POST':
        # formulario enviado
        perfil_form = RegistroForm(request.POST, instance=request.user)
        if perfil_form.is_valid():
            # formulario validado correctamente
            perfil_form.save()
            return redirect('principalUser')
    else:
        # formulario inicial
        perfil_form = RegistroForm(instance=request.user)
    return render(request, 'users/account.html', {'perfil_form': perfil_form})