from django.urls import path
from . import views

urlpatterns = [
    path('items', views.ItemList.as_view(), name='item_list'),
    path('items/<int:pk>', views.ItemDetail.as_view(), name='item_detail'),
    path('clothtype', views.ClothTypeList.as_view(), name='clothtype_list'),
    path('clothtype/<int:pk>', views.ClothTypeDetail.as_view(), name='clothtype_detail'),
    path('client', views.ClientList.as_view(), name='client_list'),
    path('client/<int:pk>', views.ClientDetail.as_view(), name='client_detail'),
    path('', views.RootApi.as_view(), name=views.RootApi.name),
]
