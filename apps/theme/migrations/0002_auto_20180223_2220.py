# -*- coding: utf-8 -*-
# Generated by Django 1.11.8 on 2018-02-23 22:20
from __future__ import unicode_literals

import DjangoUeditor.models
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('theme', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='theme',
            name='desc',
            field=DjangoUeditor.models.UEditorField(default='', verbose_name='主题介绍'),
        ),
    ]
