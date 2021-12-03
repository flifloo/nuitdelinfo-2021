from django.db.models import Model, CharField, BooleanField, ForeignKey, CASCADE
from django_quill.fields import QuillField

from people.models import People


class Boat(Model):
    name = CharField(max_length=80)
    model = CharField(max_length=80)

    description = QuillField()

    validated = BooleanField(default=False)
    pending_edit_of = ForeignKey(People, on_delete=CASCADE, null=True, blank=True)

    def __str__(self):
        return self.name
