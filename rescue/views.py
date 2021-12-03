from django.contrib.auth.decorators import login_required
from django.http import Http404, HttpResponseRedirect, HttpResponseBadRequest
from django.shortcuts import render
from django.urls import reverse

from rescue.forms import SubmitRescue
from rescue.models import Rescue


def get_rescue(rescue_id: int) -> Rescue:
    try:
        return Rescue.objects.get(pk=rescue_id)
    except Rescue.DoesNotExist:
        raise Http404("Rescue does not exist")


def index(request, rescue_id: int):
    return render(request, "article/article.html", {"rescue": get_rescue(rescue_id)})


@login_required
def submit(request):
    if request.method == "POST":
        form = SubmitRescue(request.POST)
        if form.is_valid():
            rescue = form.save()
            return HttpResponseRedirect(reverse(index, args=[rescue.pk]))
    else:
        form = SubmitRescue()

    return render(request, "article/submit.html", {"form": form})


@login_required
def edit(request, rescue_id: int):
    edited_rescue = get_rescue(rescue_id)
    if not edited_rescue.validated:
        return HttpResponseBadRequest("This entry is not validated, you can't edit it")

    if request.method == "POST":
        form = SubmitRescue(request.POST)
        if form.is_valid():
            rescue = form.save()
            rescue.pending_edit_of = edited_rescue
            rescue.save()

            return HttpResponseRedirect(reverse(index, args=[rescue.pk]))
    else:
        edited_rescue.pk = None
        form = SubmitRescue(instance=edited_rescue)

    return render(request, "article/edit.html", {"form": form, "edit_id": edited_rescue})
