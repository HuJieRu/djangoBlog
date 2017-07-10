# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from blog.models import *
# Register your models here.
admin.site.register(UserMessage)
admin.site.register(User)
admin.site.register(Tag)
admin.site.register(Article)
admin.site.register(ArticleClassify)