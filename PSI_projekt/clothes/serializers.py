from rest_framework import serializers
from .models import Cloth_type, Item, Client

class Cloth_typeSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(required=True, max_length=45)

    def create(self, validated_data):
        return Cloth_type.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.name = validated_data.get('name', instance.name)
        instance.save()
        return instance

class ItemSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    name = serializers.CharField(required=True, max_length=45)
    serial_number = serializers.CharField(required=True, max_length=45)
    size = serializers.CharField(required=True, max_length=45)
    material = serializers.CharField(required=True, max_length=45)
    price = serializers.CharField(required=True, max_length=45)
    manufacturer = serializers.CharField(required=True, max_length=45)
    color = serializers.CharField(required=True, max_length=45)

    def create(self, validated_data):
        return Item.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.name = validated_data.get('name', instance.name)
        instance.serial_number = validated_data.get('serial_number', instance.serial_number)
        instance.size = validated_data.get('size', instance.size)
        instance.material = validated_data.get('material', instance.material)
        instance.price = validated_data.get('price', instance.price)
        instance.manufacturer = validated_data.get('manufacturer', instance.manufacturer)
        instance.color = validated_data.get('color', instance.color)
        instance.save()
        return instance

class ClientSerializer(serializers.Serializer):
    id = serializers.IntegerField(read_only=True)
    gender = serializers.CharField(required=True, max_length=45)
    name = serializers.CharField(required=True, max_length=45)
    surname = serializers.CharField(required=True, max_length=45)
    adres = serializers.CharField(required=True, max_length=45)
    email = serializers.EmailField(required=True, max_length=254)
    birth_date = serializers.DateField()

    def create(self, validated_data):
        return Client.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.gender = validated_data.get('gender', instance.gender)
        instance.name = validated_data.get('name', instance.name)
        instance.surname = validated_data.get('surname', instance.surname)
        instance.adres = validated_data.get('adres', instance.adres)
        instance.email = validated_data.get('email', instance.email)
        instance.birth_date = validated_data.get('birth_date', instance.birth_date)
        instance.save()
        return instance
