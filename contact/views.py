from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from Guitars.models import Guitars
from contact.models import Contact
def do_contact(request):
    if request.method == 'POST':
        if request.POST.get('con'):
         name =request.POST['Full']
         email = request.POST['email']
         subject = request.POST['subject']
         message = request.POST['message']
         contacts = Contact(Full=name,Email=email,subject = subject,message = message)
         contacts.save()
         return redirect('../music/home')
    return render(request, 'contact.html')
