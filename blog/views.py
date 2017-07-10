# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import JsonResponse
from blog.models import *
from django.core import serializers
from django.db.models import Count
from django.db.models.functions import ExtractMonth,ExtractYear,ExtractDay,TruncDate
import logging
# Get an instance of a logger
logger = logging.getLogger('sourceDns.webdns.views')
# Create your views here.
# def index(request):
   
#     return render( request,'index.html')
#得到文章、分类、标签的个数
def getCount(request):
    # logger.error('Something went wrong!')
    #得到文章个数
    results =  Article.objects.aggregate(article=Count('id'))
    #得到标签个数
    results['tag']=Tag.objects.aggregate(tag=Count('id'))['tag']
    #得到分类个数
    results['articleClassify']=ArticleClassify.objects.aggregate(articleClassify=Count('id'))['articleClassify']
    results['status_code']=102
    # logger.info(results)
    return JsonResponse(results, safe=False)

#得到文章列表
def getArticles(request):
    #得到文章个数
    # results =  serializers.serialize('json',Article.objects.all())
    results={}
    #results['list']=list(Article.objects.annotate(date=TruncMonth('create_time',output_field=DateField())).filter(status=0).values('date').annotate(count=Count('date')).order_by('-date').values('date','count'))
    #得到所有文章的年月
    temp=Article.objects.annotate(year=ExtractYear('create_time'),month=ExtractMonth('create_time')).filter(status=0).values('year', 'month')
    #将文章年月一样的进行分组统计
    results['list']=list(temp.annotate(count=Count('month')).order_by('-year', '-month'))
    #得到所有文章总数
    results['allCount']=len(list(temp))
    results['status_code']=102
    return JsonResponse(results, safe=False)
#根据指定年月得到文章
def getArticlesForDate(request):
    #得到年月，格式00-00
    date=request.GET['year']+'-'+('0'+request.GET['month'] if int(request.GET['month'])<10 else request.GET['month'])
    results={}
    #通过年月得到文章列表
    results['list']=list(Article.objects.filter(status=0).filter(create_time__startswith=date).annotate(day=ExtractDay('create_time')).values('id','title','day'))
    results['status_code']=102
    return JsonResponse(results, safe=False)
#得到文章详情
def getArticleSpecific(request):
    # logger.info(request.GET['id'])
    results={}
    # logger.info(Article.objects.values('id','title').get(id=request.GET['id']))
    #得到标签数组
    temp=list(Article.objects.get(id=request.GET['id']).tag.values_list('name')  )
    results['tags']=[]
    #处理标签数组的格式
    for value in temp:
        results['tags'].append(value[0])
    #得到文章详情
    data=Article.objects.annotate(date=TruncDate('create_time')).values('title','content','browse','date').get(id=request.GET['id'])
    results['browse']=data['browse']
    results['title']=data['title']
    results['content']=data['content']
    results['date']=data['date']
    results['status_code']=102
    return JsonResponse(results, safe=False)
#得到文章分类
def getArticleclassify(request):
    results=list(ArticleClassify.objects.all().values_list())
    return JsonResponse(results, safe=False)

#得到右边盒子数据
def getRightboxContent(request):
    results=list(ArticleClassify.objects.all().values_list())
    return JsonResponse(results, safe=False)

#得到标签
def getTags(request):
    results=list(Tag.objects.all().values_list())
    return JsonResponse(results, safe=False)

