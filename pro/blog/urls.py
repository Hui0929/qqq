from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from blog  import views 
from blog import search

urlpatterns = [
    url(r'^index/', views.index1 ),
    url(r'^good/', views.index),
    url(r'^chaxun/', views.ccc),
    url(r'^chaxun/',views.search),
    url(r'^blog/chaxun/$',views.chaxun,name='chaxun'),
    url(r'^exam/',views.eee),
    url(r'^scrapy/',views.sss),
    url(r'^re/',views.rrr),
    url(r'^xc/',views.ddd),
    url(r'^redis/',views.d1),
    url(r'^shendu/',views.d2),
]