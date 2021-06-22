from django.db.models import Q
from django.shortcuts import render
from django.http import  HttpResponse

# Create your views here.
from Guitars.models import Guitars


def view(request):
    return  render(request,"index.html")
def ciew2(request):
    return render(request,'p1.html')

def about(request):
    return render(request,'About.html')
def contact(request):
    return render(request,'contact.html')
def show(request):
    return render(request,'index.html')

def home(request):
    return render(request,'home.html')

