"""djangoBlog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.views.generic.base import TemplateView
from blog.views import *

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', TemplateView.as_view(template_name="index.html")),
    url(r'^get_count/$', getCount, name='get_count'),
    url(r'^get_articles/$', getArticles, name='get_articles'),
    url(r'^get_articleclassify/$', getArticleclassify, name='get_articleclassify'),
    url(r'^get_rightbox_content/$', getRightboxContent, name='get_rightbox_content'),
    url(r'^get_tags/$', getTags, name='get_tags'),
    url(r'^get_articles_for_date/$', getArticlesForDate, name='get_articles_for_date'),
    url(r'^get_article_specific/$', getArticleSpecific, name='get_article_specific'),
]
