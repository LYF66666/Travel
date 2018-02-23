# -*- coding : utf-8 -*-

from django.shortcuts import render
from django.views.generic.base import View

from .models import Theme, Spot
from comments.models import Comment


class IndexView(View):
    def get(self, request):
        all_themes = Theme.objects.all().order_by("-add_time")[:6]
        return render(request, "index.html", {"all_themes": all_themes})


class ThemeView(View):
    def get(self, request, theme_id):
        all_themes = Theme.objects.all().order_by("-add_time")[:6]
        all_spots = Spot.objects.all().filter(theme_id=int(theme_id)).order_by("-add_time")[:5]
        if all_spots.count() != 0:
            return render(request, "list.html", {
                "all_themes": all_themes,
                "all_spots": all_spots
            })
        else:
            return render(request, "index.html", {"all_themes": all_themes})

class SpotView(View):
    def get(self, request, spot_id):
        all_themes = Theme.objects.all().order_by("-add_time")[:6]
        try:
            spot = Spot.objects.get(id=int(spot_id))
            all_comments = Comment.objects.filter(spot_id=int(spot.id)).order_by("-add_time")
            return render(request, "content.html", {
                "spot": spot,
                "all_comments": all_comments
            })
        except:
            return render(request, "index.html", {"all_themes": all_themes})