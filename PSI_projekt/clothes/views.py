from django.http import HttpResponse, JsonResponse
from rest_framework.parsers import JSONParser
from .models import Item
from .serializers import ItemSerializer
from django.views.decorators.csrf import csrf_exempt


# Create your views here.
@csrf_exempt
def item_list(request):
    if request.method == 'GET':
        items = Item.objects.all()
        serializer = ItemSerializer(items, many=True)
        return JsonResponse(serializer.data, safe=False)
    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = ItemSerializer(data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)
