from django.contrib.auth.decorators import login_required
from django.core import serializers
from django.db.models import Q
from django.http import Http404, HttpResponseRedirect, HttpResponseBadRequest, JsonResponse
from django.shortcuts import render
from django.urls import reverse

from people.forms import SubmitPeople
from people.models import People


def get_people(people_id: int) -> People:
    try:
        return People.objects.get(pk=people_id)
    except People.DoesNotExist:
        raise Http404("People does not exist")


def index(request):
    return render(request, "people/peoples.html", {
        "peoples": People.objects.all()
    })


def details(request, people_id: int):
    return render(request, "people/people.html", {
        "people": get_people(people_id)
    })


@login_required
def submit(request):
    if request.method == "POST":
        form = SubmitPeople(request.POST)
        if form.is_valid():
            people = form.save()
            return HttpResponseRedirect(reverse(details, args=[people.pk]))
    else:
        form = SubmitPeople()

    return render(request, "people/submit.html", {"form": form})


@login_required
def edit(request, people_id: int):
    edited_people = get_people(people_id)
    if not edited_people.validated:
        return HttpResponseBadRequest("This entry is not validated, you can't edit it")

    if request.method == "POST":
        form = SubmitPeople(request.POST)
        if form.is_valid():
            people = form.save()
            people.pending_edit_of = edited_people
            people.save()

            return HttpResponseRedirect(reverse(details, args=[people.pk]))
    else:
        edited_people.pk = None
        form = SubmitPeople(instance=edited_people)

    return render(request, "people/edit.html", {"form": form, "edit_id": people_id})


def ajax_search(request, text: str):
    return JsonResponse(serializers.serialize("json", People.objects.filter(Q(first_name__icontains=text) | Q(first_name__icontains=text))), safe=False)
