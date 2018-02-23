# -*- coding : utf-8 -*-

from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.shortcuts import render_to_response

from .models import UserProfile
from .forms import LoginForm, RegisterForm

# Create your views here.


class LoginView(View):
    def get(self, request):
        return render(request, "login.html", {})
    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            username = request.POST.get("username", "")
            password = request.POST.get("password", "")
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return HttpResponseRedirect(reverse("index"))
            else:
                return render(request, "login.html", {"password_is_worry": True})
        else:
            return render(request, "login.html", {"login_form": login_form})


class RegisterView(View):
    def get(self, request):
        return render(request, "register.html", {})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            username = request.POST.get("username", "")
            password1 = request.POST.get("password1", "")
            password2 = request.POST.get("password2", "")
            if(password1 == password2):
                user_profile = UserProfile()
                user_profile.username = username
                user_profile.password = make_password(password1)
                user_profile.save()
                return render(request, "login.html")
            else:
                return render(request, "register.html", {"check_pwd_failed": True})
        else:
            return render(request, "register.html", {"register_form": register_form})


class LogoutView(View):
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))



