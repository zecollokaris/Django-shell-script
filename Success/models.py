from django.db import models

# Create your models here.



#...Class User added here...
class Profile(models.Model):
#Attribute Variables for User class to represent different columns in database
    '''

    -bio-: used to describe user using text
    posted by
    -profile pic-: saved to profile picture folder created using django model
    '''

    user = models.OneToOneField(User,on_delete=models.CASCADE,)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    bio = models.CharField(max_length=350) 


    '''Method to filter database results'''
    def __str__(self):
        return self.profile.user
