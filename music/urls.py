from django.urls import path
from . import views

urlpatterns = [



    path('p2', views.ciew2),
    path('About', views.about),
    path('contact', views.contact),
    path('', views.home),
    path('show', views.show),




]
