from django.db.models import Model, TextField


class ThomasPesquetQuotes(Model):
    text = TextField()

    def __str__(self):
        return self.text
