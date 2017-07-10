# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
#用户信息表
class UserMessage(models.Model):
    email=models.EmailField("邮箱地址")
    gender=models.IntegerField("性别")
    def __unicode__(self):
        return self.email
#用户表
class User(models.Model):
    name=models.CharField("用户名称",max_length=10)
    password=models.CharField("用户密码",max_length=30)
    message=models.OneToOneField(UserMessage,verbose_name="用户信息id")
    update_time=models.DateTimeField("更新时间")
    create_time=models.DateTimeField("创建时间")
    def __unicode__(self):
        return self.name
#标签表
class Tag(models.Model):
    name=models.CharField("标签名称",max_length=10)
    def __unicode__(self):
        return self.name
#分类表
class ArticleClassify(models.Model):
    name=models.CharField("分类名称",max_length=10)
    parent_id=models.IntegerField("父id")
    def __unicode__(self):
        return self.name
#文章表
class Article(models.Model):
    title=models.CharField("文章标题",max_length=30)
    content=models.TextField("文章内容")
    author=models.ForeignKey(User,verbose_name="文章作者id")
    tag= models.ManyToManyField(Tag,verbose_name="标签")
    classify=models.ForeignKey(ArticleClassify,verbose_name="分类id")
    browse=models.IntegerField("阅读量",default=0)
    status=models.IntegerField("文章状态，0：存在，1：已删除",default=0)
    update_time=models.DateTimeField("更新时间")
    create_time=models.DateTimeField("创建时间")
    def __unicode__(self):
        return self.title


    