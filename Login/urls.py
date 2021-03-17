"""Login URL Configuration"""

# Imports Views For Success to Render Content.
from Success import views
from django.urls import include

from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),
    # Includes Success url patterns
    path('', include('Success.urls')),
]
