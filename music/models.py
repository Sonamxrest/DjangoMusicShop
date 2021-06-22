from django.conf import settings
from django.db import models

# Create your models here.

class Music(models.Model):
    FName = models.CharField(max_length=50)
    LName= models.CharField(max_length=50)
    title=models.TextField()
    sdate =models.DateField()
    marks = models.IntegerField()
    Email = models.CharField(max_length=50,default='')
    password = models.CharField(max_length=50, default='')




#
# class review(models.Model):
#     comment = models.TextField()
#     user = models.ForeignKey(settings.AUTH_USER_MODEL,on_delet = models)
#     product =models.Many