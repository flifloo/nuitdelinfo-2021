from django.db.models import Model, CharField, DateField, TextField


class People(Model):
    first_name = CharField(max_length=40, null=False)
    last_name = CharField(max_length=60, null=False)

    title = CharField(max_length=70)
    description = TextField(null=False)

    birth = DateField(null=False)
    death = DateField()

    history = TextField()
    genealogy = TextField()
    awards = TextField()
    pro_life = TextField()

    testimonials = TextField()
    sources = TextField(null=False)
