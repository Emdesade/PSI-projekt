from rest_framework import serializers
from .models import Cloth_type, Item, Client, Orders


class Cloth_typeSerializer(serializers.HyperlinkedModelSerializer):
    items = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='item-detail')

    class Meta:
        model = Cloth_type
        fields = ['url', 'id_cloth_type', 'name', 'items']


class ClientSerializer(serializers.HyperlinkedModelSerializer):
    orders = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='orders-detail')

    class Meta:
        model = Client
        fields = ['url', 'id_client', 'gender', 'name', 'surname', 'adres', 'email', 'birth_date', 'orders']


class ItemSerializer(serializers.HyperlinkedModelSerializer):
    cloth_type = serializers.SlugRelatedField(queryset=Item.objects.all(), slug_field='name')

    class Meta:
        model = Item
        fields = ['url', 'id_item', 'serial_number', 'size', 'material', 'price', 'manufacturer', 'color', 'cloth_type']


class OrdersSerializer(serializers.HyperlinkedModelSerializer):
    id_client = serializers.SlugRelatedField(queryset=Client.objects.all(), slug_field='id_client')
    id_item = serializers.SlugRelatedField(queryset=Item.objects.all(), slug_field='id_item')

    class Meta:
        model = Orders
        fields = ['url', 'id_order', 'id_client', 'id_item']
