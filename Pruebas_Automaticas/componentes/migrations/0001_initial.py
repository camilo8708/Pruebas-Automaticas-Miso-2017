# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-09-03 04:16
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Concurso',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('foto', models.ImageField(default='fotos/organic.png', upload_to='fotos')),
                ('url', models.CharField(max_length=30)),
                ('fechaRegistro', models.DateTimeField(auto_now_add=True)),
                ('descripcion', models.CharField(max_length=1000)),
            ],
        ),
        migrations.CreateModel(
            name='Empresa',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('nombres', models.CharField(max_length=50)),
                ('apellidos', models.CharField(max_length=50)),
                ('correoElectronico', models.EmailField(max_length=50, unique=True)),
                ('contrasenia', models.CharField(max_length=15)),
                ('tipo', models.CharField(max_length=15)),
                ('fechaRegistro', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('video', models.FileField(default='fotos/organic.png', upload_to='fotos')),
                ('estado', models.CharField(max_length=30)),
                ('nombres', models.CharField(max_length=50)),
                ('apellidos', models.CharField(max_length=50)),
                ('correoElectronico', models.EmailField(max_length=50, unique=True)),
                ('descripcion', models.CharField(max_length=1000)),
                ('fechaRegistro', models.DateTimeField(auto_now_add=True)),
                ('idConcurso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='componentes.Concurso')),
            ],
        ),
        migrations.AddField(
            model_name='concurso',
            name='idEmpresa',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='componentes.Empresa'),
        ),
    ]
