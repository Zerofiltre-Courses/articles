
from django.urls import path
from api.views import *

urlpatterns = [
    path('save-user/', users_save, name="save-user"),
    path('save-home/', home_save, name="save-home"),

    path('get-users', users_list, name="get-users"),
    path('get-homes', users_list, name="get-homes"),

    path('get-user/<str:pk>/', users_detail, name="get-user"),
    path('get-home/<str:pk>/', home_detail, name="get-home"),

    path('edit-user/<str:pk>/', users_edit, name="edit-home"),
    path('edit-home/<str:pk>/', home_edit, name="edit-user"),

]

