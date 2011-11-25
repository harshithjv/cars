from django.conf.urls.defaults import patterns, include, url
from django.conf.urls.defaults import *
from django.conf import settings
from autoregister import autoregister
from django.contrib import admin

admin.autodiscover()

autoregister('car_scraper')

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'carss.views.home', name='home'),
    # url(r'^carss/', include('carss.foo.urls')),

    url(r'^$', 'car_scraper.views.index', name='index'),

    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
