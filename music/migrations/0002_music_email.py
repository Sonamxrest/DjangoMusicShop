# Generated by Django 3.0 on 2020-01-17 06:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='music',
            name='Email',
            field=models.CharField(default='', max_length=50),
        ),
    ]