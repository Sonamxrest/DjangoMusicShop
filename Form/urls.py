from django.urls import path
from . import views

urlpatterns = [

    path('Form', views.form),
    path('login', views.login),
    path('logout', views.do_logout),


    ]