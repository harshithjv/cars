from django.db import models
from django.contrib.auth.models import User, Group
import datetime



class Car(models.Model):
    title = models.CharField(max_length=500)
    link = models.CharField(max_length=500)
    price = models.FloatField(default=0.00)
    currency_symbol = models.CharField(max_length=7, default='$')
    description = models.TextField(null=True, blank=True)
    listed_date = models.DateTimeField(default=datetime.datetime.now())
    address = models.TextField(null=True, blank=True)
    for_sale_by = models.CharField(max_length=50, null=True, blank=True)
    make = models.CharField(max_length=50, null=True, blank=True)
    model = models.CharField(max_length=50, null=True, blank=True)
    trim = models.CharField(max_length=50, null=True, blank=True)
    year = models.IntegerField(default=0)
    kms = models.IntegerField(default=0)
    transmission = models.CharField(max_length=15, null=True, blank=True)
    colour = models.CharField(max_length=15, null=True, blank=True)
    bodytype = models.CharField(max_length=50, null=True, blank=True)
    drivetrain = models.CharField(max_length=50, null=True, blank=True)
    usage_type = models.CharField(max_length=10, null=True, blank=True)
    fuel_type = models.CharField(max_length=10, null=True, blank=True)
    stock = models.IntegerField(default=0)
    
    img_link1 = models.CharField(max_length=500)
    img_link2 = models.CharField(max_length=500)
    img_link3 = models.CharField(max_length=500)
    img_link4 = models.CharField(max_length=500)
    
    publish = models.BooleanField(default=True)
    publish_date = models.DateTimeField(default=datetime.datetime.now())
   
    class Meta:
        ordering = ['-publish_date',]

    def __unicode__(self):
        return self.title
    
