# DESCRIPTION 

This is a **shell script** that that allows **execution of Django** a python based framework.

A shell script is a **computer program** designed to be run by the Unix shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts ***include file manipulation, program execution, and printing text.*** A script which sets up the environment, runs the program, and does any necessary cleanup, logging, etc. is called a wrapper.

Django is a **high-level Python Web framework** that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel.

# **WHAT THIS DJANGO-SHELL-SCRIPT DOES FOR YOU.**

1. Creates a **folder** for you.

2. Initializes Empty **Git Repository**.

3. Installs **Django 2.0.7** (Can be updated to latest version).

4. Installs **Django-bootstrap4.**

5. Installs **pillow** for Image Integration.

6. Installs **dj-database-url.**

7. Installs **gunicorn.**

8. Installs **psycopg2.**

9. Installs **whitenoise.**

10. Installs **python-decouple.**

11. Installs **wheel**


**CREATED FILES**
The script also **helps in creating some files** and this making it easy for you to code as you no longer hav to create them on your own.

It simply creates files and adds the preset standard code thats will not change in any given file structure.


1. Creates **static** file together with **css files.**

2. Creates **templates**

3. Creates **base.html** and **adds it to** the templates folder.

4. Creates **index.html**, **links it to base.html using {% extends ' '%}** then **adds it to** templates folder.

5. Creates **virtual environment**.

6. Creates **.env** file and **sets DEBUG = True**

7. Creates **.gitignore** and adds **(virtual/ | *.pyc | .env | migrations/ )** to .gitignore.

8. Creates **Procfile**

9. Creates **README.md**

10. Creates **requirements.txt**



# Prerequisites.

* You need to have nano text editor installed. you can find out whether you have it installed by typing nano --version in your terminal. For most linux distributions, it is installed by default. 

* To work with the script you have to clone Django-shell-script on my github repo. 

Link:->  ```https://github.com/zecollokaris/Django-shell-script```

**Installing Nano Text Editor.**

-However, if you don't have it installed, you can quicky do that by typing:


```
 sudo apt-get install nano
```

* You need to have (python3.6) installed in your machine.

-To check if you already have python3.6 before installing type:



```
python3.6 -V
```

**Installing Python3.6**

To install python3.6 you can quicky do that by typing:



```
sudo apt-get install python3.6
```

# Setup/Installation Reqiurements.

**{follow the below instructions for set up.}**

1. You will need Internet connection.

2. You will also need a Webpage URL to load in URL's:

3. To get to this CLI fist you need to get to the Flask-CLI repository. 

Link:-> ```https://github.com/zecollokaris/Django-shell-script```

4. From there you can access the CLI.

5. **Clone** the project.

6. Once you done with cloning and project is on your device.

7. get into project folder (cd into project). 

# HOW TO USE

**To work With this Django-shell-script**

1. Make sure your inside folder containing script.

2. Create Django folder structure

    ```
    source newDjango.sh (PROJECTNAME) (APPNAME)
    ```

3. From there the it will prompt you to create a PostgreSQL Database an object-relational database management system.

4. You Django is ready HAPPY CODING :-)
