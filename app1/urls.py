from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('app1/', views.app1_page, name='app1_page'),
]
