from django.shortcuts import render


def index(request, crew_id: int):
    context = {}
    return render(request, "crew.html", context)
