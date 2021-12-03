from django.db.models import Model, CharField, ManyToManyField, TextField

from nuitdelinfo_2021.models import People


class Crew(Model):
    name = CharField()
    members = ManyToManyField(People)

    description = TextField()
