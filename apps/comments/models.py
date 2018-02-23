# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

from users.models import UserProfile
from theme.models import Spot

# Create your models here.


class Comment(models.Model):
    spot = models.ForeignKey(Spot, verbose_name=u"景点")
    user = models.ForeignKey(UserProfile, verbose_name=u"用户")
    content = models.TextField(verbose_name=u"评论内容")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"评论时间", null=False)

    class Meta:
        verbose_name = u"评论"
        verbose_name_plural = verbose_name
