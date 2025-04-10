from django.forms import ModelForm
from .models import Book, Review

class ReviewForm(ModelForm):
    class Meta:
        model = Review
        fields = ('content',)
