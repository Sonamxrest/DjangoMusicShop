from django.urls import path
from Guitars import views

urlpatterns = [

    path('guitars', views.show_guitars),
    path('show', views.show_bookings),
    path('<int:pk>', views.del_book),
    # path('dashboard', views.addGuitar),


    ]