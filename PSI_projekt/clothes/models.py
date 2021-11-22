from django.db import models


# Create your models here.
class Item(models.Model):
    id_item = models.AutoField(primary_key=True)
    size = models.CharField(max_length=45)
    material = models.CharField(max_length=45)
    price = models.FloatField()
    manufacturer = models.CharField(max_length=45)
    color = models.CharField(max_length=45)
    cloth_type = models.IntegerField()


class Cloth_type(models.Model):
    id_cloth_type = models.AutoField(primary_key=True)


class Client(models.Model):
    id_client = models.AutoField(primary_key=True)
    gender = models.CharField(max_length=45)
    name = models.CharField(max_length=45)
    surname = models.CharField(max_length=45)
    adres = models.CharField(max_length=45)
    email = models.CharField(max_length=45)
    birh_date = models.CharField(max_length=45)


class Orders(models.Model):
    id_order = models.AutoField(primary_key=True)
    id_client = models.IntegerField()
    id_item = models.IntegerField()
