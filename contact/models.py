from django.db import models

# Create your models here.

class Contact(models.Model):
    Full = models.CharField(max_length=100)
    Email = models.CharField(max_length=100)
    subject= models.CharField(max_length=100)
    message=models.TextField()