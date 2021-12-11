from django.urls import path
from . import views

urlpatterns = [
    path('items', views.ItemList.as_view(), name='item_list'),
    path('items/<int:pk>', views.ItemDetail.as_view(), name='item_detail'),
]
