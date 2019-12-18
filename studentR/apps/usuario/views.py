from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.utils.decorators import method_decorator
from django.views.decorators.cache import never_cache
from django.views.decorators.csrf import csrf_protect
from django.views.generic.edit import FormView
from django.contrib.auth import login, logout
from django.http import HttpResponseRedirect
from .forms import FormularioLogin
from django.views.generic import TemplateView, CreateView

from apps.usuario.forms import RegistroForm
from django.contrib.auth.models import User
from django.urls import reverse
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required



class Login(FormView):
    template_name = 'login.html'
    form_class = FormularioLogin
    success_url = reverse_lazy('index')

    @method_decorator(csrf_protect)
    @method_decorator(never_cache)
    def dispatch(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(self.get_success_url())
        else:
            return super(Login, self).dispatch(request, *args, **kwargs)

    def form_valid(self, form):
        login(self.request, form.get_user())
        return super(Login, self).form_valid(form)


def logoutUsuario(request):
    logout(request)
    return HttpResponseRedirect('/accounts/login/')


class Inicio(TemplateView):
    template_name = 'users/principalUser.html'


class RegistroUsuario(CreateView):
    model = User
    template_name = "register.html"
    form_class = RegistroForm
    success_url = reverse_lazy('principalUser')


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
