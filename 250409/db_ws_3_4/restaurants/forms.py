from django import forms
from .models import Restaurant, Menu


class RestaurantForm(forms.ModelForm):
    
    class Meta:
        model = Restaurant
        fields = '__all__'

class MenuForm(forms.ModelForm):
    
    class Meta:
        model = Menu
        exclude = ('restaurant', )

    def __init__(self, *args, **kwargs):
        hide_name = kwargs.pop('hide_name', False)
        super().__init__(*args, **kwargs)

        if hide_name:
            self.fields.pop('name')