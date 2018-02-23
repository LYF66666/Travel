# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models
from DjangoUeditor.models import UEditorField

# Create your models here.

class Theme(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"主题名称", null=False)
    desc = UEditorField(verbose_name=u"主题介绍", height=300, width=600,default='', imagePath="theme/ueditor/", filePath='theme/ueditor/')
    image = models.ImageField(upload_to="theme/%Y/%m", max_length=100, verbose_name=u"主题图片", blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间", null=False)

    class Meta:
        verbose_name = u"主题"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Spot(models.Model):
    theme = models.ForeignKey(Theme, verbose_name=u"主题")
    name = models.CharField(max_length=50, verbose_name=u"景点名称", null=False)
    desc = models.CharField(max_length=300, verbose_name=u"景点介绍", null=False)
    banner = models.ImageField(upload_to="theme/spot/%Y/%m", max_length=100, verbose_name=u"景点大图", blank=True)
    cost = models.IntegerField(default=0, verbose_name=u"门票价格", null=False)
    image1 = models.ImageField(upload_to="theme/spot/%Y/%m", max_length=100, verbose_name=u"景点小图1", blank=True)
    image2 = models.ImageField(upload_to="theme/spot/%Y/%m", max_length=100, verbose_name=u"景点小图2", blank=True)
    summary1 = models.CharField(max_length=300, verbose_name=u"景点介绍1", null=False)
    summary2 = models.CharField(max_length=300, verbose_name=u"景点介绍2", null=False)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间", null=False)

    class Meta:
        verbose_name = u"景点"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name




