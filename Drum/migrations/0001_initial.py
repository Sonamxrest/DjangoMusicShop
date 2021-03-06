# Generated by Django 3.0.2 on 2020-02-08 06:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Drum',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('model', models.CharField(max_length=100)),
                ('brand', models.CharField(max_length=100)),
                ('features', models.TextField()),
                ('stock', models.IntegerField()),
                ('prices', models.IntegerField()),
                ('image', models.ImageField(upload_to='')),
            ],
        ),
    ]
