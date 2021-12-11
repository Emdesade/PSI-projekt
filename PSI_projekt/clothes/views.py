from rest_framework.decorators import permission_classes
from rest_framework.response import Response
from .models import Item, Cloth_type, Client, Orders
from .serializers import ItemSerializer, Cloth_typeSerializer, ClientSerializer
from rest_framework import status, generics
from rest_framework.views import APIView
from django.http import Http404
from rest_framework.permissions import IsAdminUser, IsAuthenticated
from rest_framework.reverse import reverse


class RootApi(generics.GenericAPIView):
    name = 'root-api'

    def get(self, request, *args, **kwargs):
        return Response({
            'items': reverse(ItemList.name, request=request)
        })


# Create your views here.
@permission_classes((IsAuthenticated,))
class ItemList(generics.ListCreateAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer
    name = 'item_list'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ItemDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Item.objects.all()
    serializer_class = ItemSerializer
    name = 'item_list'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAuthenticated,))
class ClothTypeList(generics.ListCreateAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer
    name = 'clothtype_list'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ClothTypeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer
    name = 'clothtype_detail'
    filter_fields = ['name']
    search_fields = ['name']
    ordering_fields = ['name']


@permission_classes((IsAdminUser,))
class ClientList(generics.ListCreateAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    name = 'client_list'
    filter_fields = ['name', 'surname']
    search_fields = ['name', 'surname']
    ordering_fields = ['name', 'surname']


@permission_classes((IsAdminUser,))
class ClientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    name = 'client_detail'
    filter_fields = ['name', 'surname']
    search_fields = ['name', 'surname']
    ordering_fields = ['name', 'surname']
