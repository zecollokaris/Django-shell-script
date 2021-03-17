from django.conf.urls import url,include
from Success import views
from django.contrib import admin
from django.urls import include, path
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [




#################################################################################################################################################################################
#URL FOR  HOME PAGE
#################################################################################################################################################################################

    #HOME Page url!

    #This is the home page url pattern 
    path(r'', views.index, name= 'index'),
]

