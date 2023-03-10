from rest_framework import status
from rest_framework.response import Response


# Generic POST from server
def generic_post(request, obj_serializer):
    serializer = obj_serializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# Generic Get all from server
def generic_get_all(request, obj, obj_serializer):
    tasks = obj.objects.all()
    serializer = obj_serializer(tasks, many=True)
    return Response(serializer.data)


# Generic get by ID from server
def generic_get_by_id(request, pk, obj, obj_serializer):
    tasks = obj.objects.get(id=pk)
    serializer = obj_serializer(tasks, many=False)
    return Response(serializer.data)


# Generic Update from server
def generic_put(request, pk, obj, obj_serializer):
    creation = obj.objects.get(pk=pk)
    serializer = obj_serializer(creation, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return Response(serializer.data)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# Generic delete from server
def generic_delete(request, pk, obj):
    creation = obj.objects.get(pk=pk)
    creation.delete()
    return Response(status=status.HTTP_204_NO_CONTENT)
