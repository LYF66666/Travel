# -*- coding : utf-8 -*-
from django import forms


class CommentForm(forms.Form):
    content = forms.CharField(required=True, max_length=100)