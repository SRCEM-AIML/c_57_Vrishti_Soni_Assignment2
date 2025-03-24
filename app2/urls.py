from django.urls import path
from . import views

urlpatterns = [
    path('app2/', views.app2_page, name='app2_page'),
]
