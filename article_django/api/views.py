from django.shortcuts import render
from rest_framework.decorators import api_view

from api.models import Users, Homes
from api.serializers import UserSerializer, HomeSerializer
from api.services import *

# region users methods


# POST Users
@api_view(['POST'])
def users_save(request):
    return generic_post(request=request, obj_serializer=UserSerializer)


# Get All Users
@api_view(['GET'])
def users_list(request):
    return generic_get_all(request=request, obj=Users, obj_serializer=UserSerializer)


# Get Users By Id
@api_view(['GET'])
def users_detail(request, pk):
    return generic_get_by_id(request=request, pk=pk, obj=Users, obj_serializer=UserSerializer)


# Edit Users
@api_view(['PUT'])
def users_edit(request, pk):
    return generic_put(request=request, pk=pk, obj=Users, obj_serializer=UserSerializer)


# Delete Users
@api_view(['DELETE'])
def users_delete(request, pk):
    return generic_delete(request=request, pk=pk, obj=Users)
# endregion


# region homes methods
# POST Homes
@api_view(['POST'])
def home_save(request):
    return generic_post(request=request, obj_serializer=HomeSerializer)


# Get All Users
@api_view(['GET'])
def home_list(request):
    return generic_get_all(request=request, obj=Homes, obj_serializer=HomeSerializer)


# Get Users By Id
@api_view(['GET'])
def home_detail(request, pk):
    return generic_get_by_id(request=request, pk=pk, obj=Homes, obj_serializer=HomeSerializer)


# Edit Users
@api_view(['PUT'])
def home_edit(request, pk):
    return generic_put(request=request, pk=pk, obj=Users, obj_serializer=UserSerializer)


# Delete Users
@api_view(['DELETE'])
def home_delete(request, pk):
    return generic_delete(request=request, pk=pk, obj=Users)

# endregion

