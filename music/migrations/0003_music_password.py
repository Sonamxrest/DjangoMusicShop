# Generated by Django 3.0.2 on 2020-01-21 13:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0002_music_email'),
    ]

    operations = [
        migrations.AddField(
            model_name='music',
            name='password',
            field=models.CharField(default='', max_length=50),
        ),
    ]
