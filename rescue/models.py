from django.db.models import Model, CharField, TextField, DateField, ManyToManyField, DecimalField

from people.models import People


class Rescue(Model):
    name = CharField(max_length=70, null=False)
    date = DateField(null=False)

    location_long = DecimalField(max_digits=9, decimal_places=6)
    location_lat = DecimalField(max_digits=9, decimal_places=6)

    resume = CharField(max_length=125, null=False)

    saved = ManyToManyField(People, related_name="saved")
    rescuers = ManyToManyField(People, related_name="rescued")

    description = TextField()

    sources = TextField(null=False)
