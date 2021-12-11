from rest_framework import serializers
from .models import Cloth_type, Item, Client


class Cloth_typeSerializer(serializers.HyperlinkedModelSerializer):
    items = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='item_list')

    class Meta:
        model = Cloth_type
        fields = ['id_cloth_type', 'name']


class ItemSerializer(serializers.HyperlinkedModelSerializer):
    items = serializers.SlugRelatedField(queryset=Cloth_type.objects.all(), slug_field='name')

    class Meta:
        model = Item
        fields = ['id_item', 'serial_number', 'size', 'material', 'price', 'manufacturer', 'color']


class ClientSerializer(serializers.HyperlinkedModelSerializer):
    orders = serializers.HyperlinkedRelatedField(many=True, read_only=True, view_name='order-detail')

    class Meta:
        model = Client
        fields = ['id_client', 'gender', 'name', 'surname', 'adres', 'email', 'birth_date']
