from django.db.models import Model, CharField, DateField, ManyToManyField, DecimalField
from django_quill.fields import QuillField

from people.models import People


class Rescue(Model):
    name = CharField(max_length=70)
    date = DateField()

    location_long = DecimalField(max_digits=9, decimal_places=6)
    location_lat = DecimalField(max_digits=9, decimal_places=6)

    resume = CharField(max_length=125)

    saved = ManyToManyField(People, related_name="saved")
    rescuers = ManyToManyField(People, related_name="rescued")

    description = QuillField()

    sources = QuillField()
