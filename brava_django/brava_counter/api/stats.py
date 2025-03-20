from django.db.models import Sum
from django.utils.timezone import now
from datetime import datetime, timedelta, time
from .models import MoveCounter

def calculate_daily_sum():
   # today = datetime.now().date()
   today = now().date()
   tomorrow1 = today + timedelta(1)
   pastWeek = today - timedelta(6)

   # today_start = datetime.combine(today, time(0, 0, 0))  # Midnight today
   # today_end = datetime.combine(tomorrow, time(0, 0, 0))  # Midnight tomorrow

   # return MoveCounter.objects.filter(updated_at = start__lte=today_end, end__lte=today_start).aggregate(
   # return MoveCounter.objects.filter(updated_at__range=(today_start, today_end)).aggregate(
   # return MoveCounter.objects.filter().aggregate(
   return MoveCounter.objects.filter(updated_at__date=today).aggregate(
      DLJ_daily = Sum('DLJ_counter'),
      DLR_daily = Sum('DLR_counter'),
      SLJ_L_daily = Sum('SLJ_L_counter'),  
      SLJ_R_daily = Sum('SLJ_R_counter'),
      SLR_L_daily = Sum('SLR_L_counter'),
      SLR_R_daily = Sum('SLR_R_counter')
   )