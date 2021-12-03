from django.shortcuts import render

from rescue.models import Rescue


def index(request):
    return render(request, "index.html", {
        "rescues": Rescue.objects.order_by("date")[:3]
    })
