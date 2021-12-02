from django.db.models import Model, CharField, DateField, BooleanField, ForeignKey, CASCADE
from django_quill.fields import QuillField


class People(Model):
    first_name = CharField(max_length=40)
    last_name = CharField(max_length=60)

    title = CharField(max_length=70, null=True, blank=True)
    description = QuillField()

    birth = DateField()
    death = DateField(null=True, blank=True)

    history = QuillField(null=True, blank=True)
    genealogy = QuillField(null=True, blank=True)
    awards = QuillField(null=True, blank=True)
    pro_life = QuillField(null=True, blank=True)

    testimonials = QuillField(null=True, blank=True)
    sources = QuillField()
    
    validated = BooleanField(default=False)
    pending_edit_of = ForeignKey("self", on_delete=CASCADE, null=True, blank=True)
