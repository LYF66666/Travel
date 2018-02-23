from django.shortcuts import render
from django.views.generic.base import View
from django.http import HttpResponseRedirect

from .forms import CommentForm
from .models import Comment
from theme.models import Theme, Spot


class CommentView(View):
    def post(self, request):
        comment_form = CommentForm(request.POST)
        content = request.POST.get("content", "")
        user_id = request.POST.get("user_id", 0)
        spot_id = request.POST.get("spot_id", 0)
        if comment_form.is_valid():
            comment = Comment()
            comment.content = content
            comment.user_id = int(user_id)
            comment.spot_id = int(spot_id)
            comment.save()
        return HttpResponseRedirect('/spot/{0}'.format(spot_id))
