from django.shortcuts import render

#---------------------------------------------------------------------#
'''End Of Import'''
#---------------------------------------------------------------------#

# VIEW FUNCTIONS HERE!



#################################################################################################################################################################################
#HOME PAGE VIEW FUNCTION
#################################################################################################################################################################################

#Home page view function
def index(request):
	title = 'Welcome: This is the Home Page'
	context = {
	"title": title,
	    }
	return render(request, "Success/index.html",context)

#################################################################################################################################################################################
#REGISTRATION & LOGIN PAGE VIEW FUNCTION
#################################################################################################################################################################################


#Registration & Login page view function
def login(request):
    return render(request, 'Registration/login.html')

#################################################################################################################################################################################