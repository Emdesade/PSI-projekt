from django.contrib import admin
from .models import Item, Cloth_type, Client, Orders

# Register your models here.

admin.site.register(Item)
admin.site.register(Cloth_type)
admin.site.register(Client)
admin.site.register(Orders)
