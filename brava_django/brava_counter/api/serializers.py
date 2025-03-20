from rest_framework import serializers
from .models import MoveCounter

class MoveCounterSerializer(serializers.ModelSerializer):
    class Meta:
        model = MoveCounter
        fields = '__all__'  # Include all fields in the API response
