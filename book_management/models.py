from django.db import models

# Create your models here.

# Exercise 11.04

class Book(models.Model):
    name = models.CharField(max_length=255)
    author = models.CharField(max_length=50)
