# Generated by Django 3.0.2 on 2020-02-08 06:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Bookings', '0005_booking_quantity'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='booking',
            name='quantity',
        ),
    ]
