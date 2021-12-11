from rest_framework.decorators import permission_classes
from rest_framework.response import Response
from .models import Item, Cloth_type, Client, Orders
from .serializers import ItemSerializer, Cloth_typeSerializer, ClientSerializer, OrdersSerializer
from rest_framework import status, generics
from rest_framework.views import APIView
from django.http import Http404
from rest_framework.permissions import IsAdminUser, IsAuthenticated
from rest_framework.reverse import reverse


class RootApi(generics.GenericAPIView):
    name = 'root-api'

    def get(self, request, *args, **kwargs):
        return Response({
            'items': reverse(ItemList.name, request=request),
            'clothtype': reverse(ClothTypeList.name, request=request),
            'client': reverse(ClientList.name, request=request),
            'orders': reverse(OrdersList.name, request=request),
        })


# Create your views here.
@permission_classes((IsAuthenticated,))
class ItemList(generics.ListCreateAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer
    name = 'item-list'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ItemDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer
    name = 'item-detail'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAuthenticated,))
class ClothTypeList(generics.ListCreateAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer
    name = 'cloth_type-list'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ClothTypeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer
    name = 'cloth_type-detail'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ClientList(generics.ListCreateAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    name = 'client-list'
    filter_fields = ['name', 'surname']
    search_fields = ['name', 'surname']
    ordering_fields = ['name', 'surname']


@permission_classes((IsAdminUser,))
class ClientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    name = 'client-detail'
    filter_fields = ['name', 'surname']
    search_fields = ['name', 'surname']
    ordering_fields = ['name', 'surname']


@permission_classes((IsAdminUser,))
class OrdersList(generics.ListCreateAPIView):
    queryset = Orders.objects.all()
    serializer_class = OrdersSerializer
    name = 'orders-list'
    filter_fields = ['id_order', 'id_client']
    search_fields = ['id_order', 'id_client']
    ordering_fields = ['id_order', 'id_client']


@permission_classes((IsAdminUser,))
class OrdersDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Orders.objects.all()
    serializer_class = OrdersSerializer
    name = 'orders-detail'
    filter_fields = ['name', 'surname']
    search_fields = ['name', 'surname']
    ordering_fields = ['name', 'surname']
