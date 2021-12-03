from django.urls import path

from . import views

urlpatterns = [
    path('<int:rescue_id>', views.index, name='index'),
    path("submit/", views.submit, name="submit"),
    path("edit/<int:rescue_id>/", views.edit, name="edit")
]
