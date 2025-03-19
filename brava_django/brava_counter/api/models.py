from django.db import models

# Create your models here.
class MoveCounter(models.Model):
   # should we also make a user id that is linked to each person that is outputted from the algorithm???

   # jumps
   DLJ_counter = models.IntegerField(default = 0)
   SLJ_L_counter = models.IntegerField(default = 0)
   SLJ_R_counter = models.IntegerField(default = 0)

   # releves
   DLR_counter = models.IntegerField(default = 0)
   SLR_L_counter = models.IntegerField(default = 0)
   SLR_R_counter = models.IntegerField(default = 0)

   updated_at = models.DateTimeField(auto_now=True)  # Auto-updated timestamp

   def __str__(self):
      return (f"Jumps - DLJ: {self.DLJ_counter}, SLJ_L: {self.SLJ_L_counter}, SLJ_R: {self.  SLJ_R_counter} | "
               f"Relevés - DLR: {self.DLR_counter}, SLR_L: {self.SLR_L_counter}, SLR_R: {self.SLR_R_counter}")