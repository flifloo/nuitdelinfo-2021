from django.db.models import Model, CharField, TextField


class Rescue(Model):
    name = CharField(max_length="256")
    text = TextField()
