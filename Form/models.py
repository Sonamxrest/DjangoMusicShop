from django.db import models

# Create your models here.
class Form(models.Model):
    Firstname= models.CharField(max_length=50)
    Lastname = models.CharField(max_length=50)
    Email = models.CharField(max_length=50)
    Gender = models.CharField(max_length=20)
    Username= models.CharField(max_length=50)
    Password= models.CharField(max_length=50)
    Cpassword= models.CharField(max_length=50)