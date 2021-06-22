from django.urls import path
from Drum import views

urlpatterns = [

    path('Drum', views.show_Drums),
    path('show', views.show_books),
    path('<int:pk>', views.del_books),
    # path('dashboard', views.addGuitar),


    ]