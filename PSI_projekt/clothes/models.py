from django.db import models


# Create your models here.
class Cloth_type(models.Model):
    id_cloth_type = models.AutoField(primary_key=True)
    name = models.CharField(max_length=45)


class Item(models.Model):
    id_item = models.AutoField(primary_key=True)
    name = models.CharField(max_length=45)
    serial_number = models.CharField(max_length=45)
    size = models.CharField(max_length=10)
    material = models.CharField(max_length=45)
    price = models.FloatField()
    manufacturer = models.CharField(max_length=45)
    color = models.CharField(max_length=45)
    cloth_type = models.ForeignKey(Cloth_type, on_delete=models.CASCADE)


class Client(models.Model):
    id_client = models.AutoField(primary_key=True)
    gender = models.CharField(max_length=45)
    name = models.CharField(max_length=45)
    surname = models.CharField(max_length=45)
    adres = models.CharField(max_length=45)
    email = models.CharField(max_length=45)
    birth_date = models.CharField(max_length=45)


class Orders(models.Model):
    id_order = models.AutoField(primary_key=True)
    id_client = models.ForeignKey(Client, on_delete=models.CASCADE)
    id_item = models.ForeignKey(Item, on_delete=models.CASCADE)
