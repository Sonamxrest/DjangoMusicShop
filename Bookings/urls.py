from django.urls import path
from Bookings import views

urlpatterns = [
    path('<pid>/', views.book_products),



]