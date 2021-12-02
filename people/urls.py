from django.urls import path

from . import views

urlpatterns = [
    path('<int:people_id>/', views.index, name='index'),
]
