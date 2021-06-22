from django.contrib import admin

# Register your models here.
from django.contrib import admin
from Guitars.models import Guitars
# Register your models here.
class GuitarAdmin(admin.ModelAdmin):
    list_dispaly = ("user", "product", "date")

admin.site.register(Guitars,GuitarAdmin)