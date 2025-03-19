from django.urls import path
from .views import get_count

urlpatterns = [
    path('counter/', get_count, name='get_count')
]
