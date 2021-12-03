from django.forms import ModelForm, DateInput

from rescue.models import Rescue


class DateInput(DateInput):
    input_type = "date"


class SubmitRescue(ModelForm):
    class Meta:
        model = Rescue
        fields = ["name", "date", "location_long", "location_lat", "resume", "saved", "rescuers", "boats", "description",
                  "sources"]
        widgets = {
            "date": DateInput()
        }
