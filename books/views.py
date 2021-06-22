from datetime import datetime

from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from Drum.models import Drum
from books.models import Book


def book_productts(request, pid):
    user = request.user
    product = Drum.objects.get(id=pid)
    date = datetime.now()
    b = Book(user=user,product=product,date=date)
    b.save()
    return redirect('http://127.0.0.1:8000/Drum/Drum')