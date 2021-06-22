from django.db import models

# Create your models here.
class Guitars(models.Model):
    model = models.CharField(max_length=100)
    brand = models.CharField(max_length=100)
    features = models.TextField()
    stock = models.IntegerField()
    prices = models.IntegerField()

    image = models.ImageField()
