from datetime import datetime

from django.db import models

# Create your models here.
from django.conf import settings
from django.db import models
from Guitars.models import Guitars


class Booking(models.Model):
 user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
 product = models.ForeignKey(Guitars, on_delete =models.CASCADE)
 date = models.DateField()

