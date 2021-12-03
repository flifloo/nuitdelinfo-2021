from django.forms import ModelForm, DateInput

from boat.models import Boat


class DateInput(DateInput):
    input_type = "date"


class SubmitBoat(ModelForm):
    class Meta:
        model = Boat
        fields = ["name", "model", "description"]
