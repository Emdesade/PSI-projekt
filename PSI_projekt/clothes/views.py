from rest_framework.decorators import permission_classes
from rest_framework.response import Response
from .models import Item, Cloth_type, Client, Orders
from .serializers import ItemSerializer, Cloth_typeSerializer, ClientSerializer
from rest_framework import status, generics
from rest_framework.views import APIView
from django.http import Http404
from rest_framework.permissions import IsAdminUser, IsAuthenticated


# Create your views here.
@permission_classes((IsAuthenticated,))
class ItemList(APIView):
    def get(self, request, format=None):
        items = Item.objects.all()
        serializer = ItemSerializer(items, many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        serializer = ItemSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@permission_classes((IsAdminUser,))
class ItemDetail(APIView):
    def get_object(self, pk):
        try:
            return Item.objects.get(id_item=pk)
        except Item.DoesNotExist:
            raise Http404('404 ITEM NOT FOUND ')

    def get(self, request, pk, format=None):
        item = self.get_object(pk)
        serializer = ItemSerializer(item)
        return Response(serializer.data)

    def put(self, request, pk, format=None):
        item = self.get_object(pk)
        serializer = ItemSerializer(item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def delete(self, request, pk, format=None):
        item = self.get_object(pk)
        item.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


@permission_classes((IsAuthenticated,))
class ClothTypeList(generics.ListCreateAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer


@permission_classes((IsAdminUser,))
class ClothTypeDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Cloth_type.objects.all()
    serializer_class = Cloth_typeSerializer


@permission_classes((IsAdminUser,))
class ClientList(generics.ListCreateAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer


@permission_classes((IsAdminUser,))
class ClientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
