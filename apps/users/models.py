# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.


class UserProfile(AbstractUser):
    image = models.ImageField(default="users/default.png", upload_to="users/%Y/%m", max_length=100, verbose_name=u"头像", blank=True)

    class Meta:
        verbose_name = "用户信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username
