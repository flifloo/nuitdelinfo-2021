from django.forms import TextInput, PasswordInput
from django_registration.forms import RegistrationForm


class MyCustomUserForm(RegistrationForm):
    class Meta(RegistrationForm.Meta):
        widgets = {
            "username": TextInput(attrs={'placeholder': "Nom d'utilisateur"}),
            "email": TextInput(attrs={'placeholder': "Email"}),
            "password1": PasswordInput(attrs={'placeholder': "Mot de passe"}),
            "password2": PasswordInput(attrs={'placeholder': "Confirmation du mot de passe"}),
        }
