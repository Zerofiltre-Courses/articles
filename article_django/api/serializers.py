from rest_framework import serializers

from api.models import Users, Homes


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = '__all__'


class HomeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Homes
        fields = '__all__'
