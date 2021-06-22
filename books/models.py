from django.conf import settings
from django.db import models

# Create your models here.
from Drum.models import Drum


class Book(models.Model):
 user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
 product = models.ForeignKey(Drum, on_delete =models.CASCADE)
 date = models.DateField()