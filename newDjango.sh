#!/bin/sh

# Creating new app
mkdir ${1}
cd ${1}
# Creating virtual folder
chmod a+x newDjango.sh

python3.6 -m venv virtual

source virtual/bin/activate
Initializing  git
git init
touch .gitignore
touch README.md
cat >> README.md << EOF
# ${1}
## By **Wesley Mutwiri**
## Live Demo
coming soon
## Description

## Setup and Installation Requirements
1. Open your default web browser
2. Internet connection is required
3. Search for wesleymutwiri on github and click on the repository ${1}
4. No other downloads or plug-ins are required to view this python application
5. Click on the live site on the github repository
6. Alternatively, use the livelink found down below

## Known bugs
There are currently no known bugs experienced on the website but feedback on bugs experienced during use of the website will be highly appreciated. The only reason that the website may fail to load is if the Internet connection is slow or disconnected which will require you to troubleshoot your Internet connection. Thankyou in advance for your support.

## Technologies used
* HTML5
* CSS
* Bootstrap4
* Python3.6
* django
* Heroku
* Git

## Support and contact details
Contact me on my github account
<https://github.com/wesleymutwiri>

copyright (c) {2018} {Wesley Mutwiri}
EOF
mkdir static
cd static
mkdir css
cd css
touch ${2}.css
cd ../../

cat >> .gitignore << EOF

virtual/
*.pyc
.env
migrations/

EOF

# Installing dependencies
pip install django==1.11.5
pip install django-bootstrap4 pillow
pip install dj-database-url gunicorn psycopg2 whitenoise python-decouple

django-admin startproject ${1} .
django-admin startapp ${2}

# Creating  Folder
cd ${2}
# defining the app urls
touch urls.py

cat >> urls.py<< EOF
from django.conf.urls import url,include
from . import views
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    url(r'^$', views.index, name= 'index'),
]

EOF

mkdir templates templates/${2}/
cd templates/${2}/

# creating the templates
touch base.html index.html

# Filling the base.html file
cat >> base.html<< EOF
{%load bootstrap4 %}
{% load static %}
<html>
<head>
<meta charset="utf-8">
<title> ${1}</title>
{%block styles%}
{%bootstrap_css%}
<link rel="stylesheet" href="{%static 'css/${2}.css'%}">
{% endblock %}

</head>
<body>
{%block content%}
{% endblock %}
{% block scripts %}
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/ScrollMagic.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/debug.addIndicators.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> {% bootstrap_javascript %} {% endblock %}
</body>
</html>

EOF
cat >> index.html << EOF
{%extends '${2}/base.html'%}
{%block content%}
EOF
cd ../../../

# Getting requirements
pip freeze > requirements.txt

# Creating procfile
touch Procfile

# Configuring procfile
cat >> Procfile << EOF
web: gunicorn ${1}.wsgi
EOF
# creating env file
touch .env

cat>> .env << EOF
DEBUG = True 

EOF


# Creating initial commit
git add .

git commit -m "Initial Commit"

# enter psql
psql
           
# Open code
code .
