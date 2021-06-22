from django.contrib import auth
from django.contrib.auth.models import User
from django.db.models import Q

from Drum.models import Drum
from Guitars.models import Guitars
from . import models
from django.shortcuts import render, redirect
from django.http import  HttpResponse
# Create your views here.
def form(request):
    if request.method=='POST':
        if request.POST.get('reg'):
          fn = request.POST['fn']
          ln = request.POST['ln']
          em = request.POST['em']
          un = request.POST['un']
          pw = request.POST['pw']
          user = User.objects.create_user(first_name=fn, last_name=ln, email=em,username= un,password=pw)
          user.save()
          return redirect('../login')
        else:
            key = request.POST['key']
            prod = Guitars.objects.filter(Q(model__icontains=key) | Q(brand__icontains=key))
            return render(request, 'base.html', {'mbs': prod})


    return render(request,'Form.html')




def login(request):
    if request.method == 'POST':
     if request.POST.get('log'):
        un = request.POST['un']
        pw = request.POST['pw']
        usr = auth.authenticate(username=un, password=pw)
        if usr is not None:
         auth.login(request, usr)
         return redirect('../../music/home')
        else:
         return HttpResponse("wrong id or password")

    return render(request, 'login.html')


def do_logout(request):
    auth.logout(request)
    return redirect('../../login')



