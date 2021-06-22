from django.shortcuts import render

# Create your views here.
from datetime import datetime

from django.http import HttpResponse
from django.shortcuts import render, redirect

from Bookings.models import Booking
from Guitars.models import Guitars


def book_products(request, pid):
    user = request.user
    product = Guitars.objects.get(id=pid)
    date = datetime.now()
    b = Booking(user=user,product=product,date=date)
    b.save()
    return redirect('http://127.0.0.1:8000/guitars')





