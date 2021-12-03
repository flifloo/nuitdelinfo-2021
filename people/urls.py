from django.urls import path

from . import views

urlpatterns = [
    path("<int:people_id>/", views.index, name='index'),
    path("submit/", views.submit, name="submit"),
    path("edit/<int:people_id>/", views.edit, name="edit")
]
