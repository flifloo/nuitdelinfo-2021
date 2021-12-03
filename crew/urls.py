from django.urls import path

from . import views

urlpatterns = [
    path('<int:crew_id>', views.index, name='index'),
]
