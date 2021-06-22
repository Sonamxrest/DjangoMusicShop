from django.contrib import admin

# Register your models here.
from Drum.models import Drum


class DrumAdmin(admin.ModelAdmin):
    list_dispaly = ("user", "product", "date")

admin.site.register(Drum,DrumAdmin)