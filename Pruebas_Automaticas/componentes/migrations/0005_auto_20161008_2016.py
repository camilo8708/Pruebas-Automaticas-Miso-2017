# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-10-09 01:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('componentes', '0004_auto_20160903_1834'),
    ]

    operations = [
        migrations.AlterField(
            model_name='video',
            name='video',
            field=models.TextField(),
        ),
    ]