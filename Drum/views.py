from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from Drum.models import Drum
from books.models import Book


def show_Drums(request):
   mbs= Drum.objects.all()
   return render(request, 'Drum.html',{'Drum':mbs})


def show_books(request):
   book= Book.objects.all()
   current_user =request.user.id
   return render(request, 'product.html',{'books':book,'current_user':current_user})


def del_books(request, pk):
   product = Book.objects.get(id=pk)
   product.delete()
   return redirect ('../Drum/show')