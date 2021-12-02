from django.http import Http404
from django.shortcuts import render

from people.models import People


def index(request, people_id: int):
    try:
        people = People.objects.get(pk=people_id)
    except People.DoesNotExist:
        raise Http404("People does not exist")

    return render(request, "people.html", {
        "people": people
    })
