from django import template
import hashlib

register = template.Library()


@register.filter(name='md5')
def md5_string(value: str):
    return hashlib.md5(value.encode()).hexdigest()
