from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext, Context
from django.http import HttpResponseRedirect, HttpResponse
import datetime
import random
from models import *

def index(request):
    cars = Car.objects.all()
    context = {'cars':cars}
    return render_to_response('index.html', context, context_instance = RequestContext(request))