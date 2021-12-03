from django.contrib.auth.decorators import login_required
from django.core import serializers
from django.db.models import Q
from django.http import Http404, HttpResponseRedirect, HttpResponseBadRequest, JsonResponse
from django.shortcuts import render
from django.urls import reverse

from boat.forms import SubmitBoat
from boat.models import Boat


def get_boat(boat_id: int) -> Boat:
    try:
        return Boat.objects.get(pk=boat_id)
    except Boat.DoesNotExist:
        raise Http404("Boat does not exist")


def index(request):
    return render(request, "boat/boats.html", {
        "boats": Boat.objects.all()
    })


def details(request, boat_id: int):
    return render(request, "boat/boat.html", {
        "boat": get_boat(boat_id)
    })


@login_required
def submit(request):
    if request.method == "POST":
        form = SubmitBoat(request.POST)
        if form.is_valid():
            boat = form.save()
            return HttpResponseRedirect(reverse(details, args=[boat.pk]))
    else:
        form = SubmitBoat()

    return render(request, "boat/submit.html", {"form": form})


@login_required
def edit(request, boat_id: int):
    edited_boat = get_boat(boat_id)
    if not edited_boat.validated:
        return HttpResponseBadRequest("This entry is not validated, you can't edit it")

    if request.method == "POST":
        form = SubmitBoat(request.POST)
        if form.is_valid():
            boat = form.save()
            boat.pending_edit_of = edited_boat
            boat.save()

            return HttpResponseRedirect(reverse(details, args=[boat.pk]))
    else:
        edited_boat.pk = None
        form = SubmitBoat(instance=edited_boat)

    return render(request, "boat/edit.html", {"form": form, "edit_id": boat_id})


def ajax_search(request, text: str):
    return JsonResponse(serializers.serialize("json", Boat.objects.filter(Q(name__icontains=text) | Q(description__icontains=text))), safe=False)
