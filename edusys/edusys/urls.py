"""edusys URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from stusys import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path(r'index/', views.index),
    path(r'login/', views.login),
    path(r'logined/', views.logined),
    path(r'stu_info/', views.stu_info),
    path(r'select_course/', views.select_course),
    path(r'add_course/', views.add_course),
    path(r'stu_course/', views.stu_course),
    path(r'logout/', views.logout)
]
