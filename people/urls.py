from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name='index'),
    path("<int:people_id>/", views.details, name='details'),
    path("submit/", views.submit, name="submit"),
    path("edit/<int:people_id>/", views.edit, name="edit")
]
