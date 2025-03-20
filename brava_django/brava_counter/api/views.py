from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from .models import MoveCounter
from .serializers import MoveCounterSerializer
from .stats import calculate_daily_sum

@api_view(['GET'])
def get_count(request):
    try:
        # CHANGE THIS: 
            #instead of getting the .first(), get everything that was from today's date. then sum all of those 
        #move_counter = MoveCounter.objects.first()  # Get the first available record
        daily_sums = calculate_daily_sum()

        if not daily_sums:
            return Response({'error': 'No records found'}, status=status.HTTP_404_NOT_FOUND)

        if request.method == 'GET':
            serializer = MoveCounterSerializer(daily_sums)
            return Response(daily_sums, status=status.HTTP_200_OK)

            # return Response(serializer.data, status=status.HTTP_200_OK)
        
        # I highkey don't need PUT, but if we wanted it, this would work 
        elif request.method == 'PUT':
            serializer = MoveCounterSerializer(daily_sums, data=request.data, partial=True)
            if serializer.is_valid():
                serializer.save()  # Save updated values
                return Response(serializer.data, status=status.HTTP_200_OK)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)