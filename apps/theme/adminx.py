# -*- coding : utf-8 -*-

import xadmin

from .models import Theme, Spot


class ThemeAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name']
    list_filter = ['add_time']
    style_fields = {"desc": "ueditor"}


class SpotAdmin(object):
    list_display = ['name', 'desc', 'theme', 'cost', 'add_time']
    search_fields = ['name', 'theme']
    list_filter = ["theme__name", 'add_time']


xadmin.site.register(Theme, ThemeAdmin)
xadmin.site.register(Spot, SpotAdmin)

