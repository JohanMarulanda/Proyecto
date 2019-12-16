from django.template import Library

register = Library()

def filtrado1(request):
    asignatura = asignaturaProf.objects.filter(periodo='FEBRERO/2016 -JUNIO/2016')
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

def filtrado2(request):
    asignatura = asignaturaProf.objects.filter(periodo='AGOSTO/2016 - DICIEMBRE/2016')
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

def filtrado3(request):
    asignatura = asignaturaProf.objects.filter(periodo='FEBRERO/2017 - JUNIO/2017')
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

def filtrado4(request):
    asignatura = asignaturaProf.objects.filter(periodo='AGOSTO/2017 - DICIEMBRE/2017')
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})

def filtrado5(request):
    asignatura = asignaturaProf.objects.filter(periodo='FEBRERO/2018 - JUNIO/2018')
    return render(request, "asignatura/buscarDocente.html", {'asignaturas': asignatura})