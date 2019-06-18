from django.shortcuts import render
from django.http import HttpResponse
from blog.models import MOV
from django.db import models
from blog.models import SS
from blog.models import Mobeil
from django.db import connection
import MySQLdb
import datetime
from django.template.loader import get_template
from django.core.paginator import Paginator
from django.shortcuts import render_to_response
from django.template import RequestContext 
# Create your views he
def index1(request):

  # movies=movie.objects.all()
   movies=MOV.objects.all()
   return render(request,'blog/index.html',
   {
      'movies':movies,
   })
def index(request):

  # movies=movie.objects.all()
   mobeils=Mobeil.objects.all()
   return render(request,'blog/good.html',
   {
      'mobeils':mobeils,
   })
def chaxun(request):
   a = request.GET.get('tex')  #30
   return HttpResponse(a)


def ccc(request):
   cursor=connection.cursor()
   a = request.GET.get('tex')  #30

   test = a+'%'

   #tex=request.get("tex")
   cursor.execute(("select * from doubantop where name like %s"),test)
   rows=cursor.fetchall()
   return render(request,'blog/chaxun.html',
   {'content':rows
   })

    #   return HttpResponse('<strong>helloworld</strong>')
   #    return render(request,'blog/index.html')

def search_form(request):
   return render_to_response('blog/index.html')
 

def search(request):  
   request.encoding='utf-8'
   arg1=request.GET('tex')
   return render_to_response('blog/chaxun.html',arg1)
def eee(request):
   request.encoding='utf-8'
   return render_to_response('blog/exam.html')
def sss(request):
   request.encoding='utf-8'
   return render_to_response('blog/scrapy.html')
def rrr(request):
   request.encoding='utf-8'
   return render_to_response('blog/re.html')
def ddd(request):
   request.encoding='utf-8'
   return render_to_response('blog/dxc.html')
def d1(request):
   request.encoding='utf-8'
   return render_to_response('blog/redis.html')
def d2(request):
   request.encoding='utf-8'
   return render_to_response('blog/shendu.html')