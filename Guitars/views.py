from datetime import datetime


from django.contrib.auth.decorators import login_required
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.template.defaultfilters import default

from Bookings.models import Booking
from Guitars.models import Guitars
# Create your views her
# e.

def show_guitars(request):
   mbs= Guitars.objects.all()
   return render(request, 'base.html',{'mbs':mbs})



@login_required
def show_bookings(request):
   book= Booking.objects.all()
   current_user = request.user.id
   return render(request, 'product.html',{'book':book, 'current_user':current_user})


def del_book(request, pk):
   product = Booking.objects.get(id=pk)
   product.delete()
   return redirect('../show')
