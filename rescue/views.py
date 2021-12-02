from django.shortcuts import render


def index(request, article_id: int):
    context = {}
    return render(request, "article.html", context)

