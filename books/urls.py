from django.urls import path
from books import views

urlpatterns = [
    path('<pid>/', views.book_productts),

]