from django.urls import path, include
from . import views

urlpatterns = [
    path('items', views.ItemList.as_view(), name=views.ItemList.name),
    path('items/<int:pk>', views.ItemDetail.as_view(), name=views.ItemDetail.name),
    path('clothtype', views.ClothTypeList.as_view(), name=views.ClothTypeList.name),
    path('clothtype/<int:pk>', views.ClothTypeDetail.as_view(), name=views.ClothTypeDetail.name),
    path('client', views.ClientList.as_view(), name=views.ClientList.name),
    path('client/<int:pk>', views.ClientDetail.as_view(), name=views.ClientDetail.name),
    path('orders', views.OrdersList.as_view(), name=views.OrdersList.name),
    path('orders/<int:pk>', views.OrdersDetail.as_view(), name=views.OrdersDetail.name),
    path('', views.RootApi.as_view(), name=views.RootApi.name),
    path('api-auth/', include('rest_framework.urls')),
]
