# Generated by Django 3.0.2 on 2020-02-06 05:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Bookings', '0003_booking'),
    ]

    operations = [
        migrations.RenameField(
            model_name='booking',
            old_name='model',
            new_name='product',
        ),
        migrations.RemoveField(
            model_name='booking',
            name='stock',
        ),
    ]