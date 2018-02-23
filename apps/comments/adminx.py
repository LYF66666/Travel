# -*- coding : utf-8 -*-

import xadmin

from .models import Comment


class CommentAdmin(object):
    list_display = ['spot', 'user', 'content', 'add_time']
    search_fields = ['spot', 'content']
    list_filter = ['user__username', 'add_time']

xadmin.site.register(Comment, CommentAdmin)