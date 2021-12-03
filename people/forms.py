from django.forms import ModelForm, DateInput

from people.models import People


class DateInput(DateInput):
    input_type = "date"


class SubmitPeople(ModelForm):
    class Meta:
        model = People
        fields = ["first_name", "last_name", "title", "description", "birth", "death", "history", "genealogy", "awards",
                  "pro_life", "testimonials", "sources"]
        widgets = {
            "birth": DateInput(),
            "death": DateInput()
        }
