# Generated by Django 3.0.2 on 2020-02-08 06:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Bookings', '0004_auto_20200206_1047'),
    ]

    operations = [
        migrations.AddField(
            model_name='booking',
            name='quantity',
            field=models.IntegerField(default=0),
        ),
    ]