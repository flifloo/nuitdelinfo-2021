from django.http import Http404
from django.shortcuts import render

from error.models import ThomasPesquetQuotes


def index(request, exception=None):
    try:
        quote = ThomasPesquetQuotes.objects.order_by("?")[0].text
    except:
        quote = None

    response = render(request, "error.html", {
        "quote": quote
    })

    response.status_code = 500

    if isinstance(exception, Http404):
        response.status_code = 404

    return response
