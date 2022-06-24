from django.shortcuts import render

# Create your views here.
def index(request):
    names = "john,doe,mark,swain"
    return render(request, "index.html", {'names': names})

# Exercise 11.02
#def greeting_view(request):
#    return render(request, 'simple_tag_template.html', {'username': 'Truc'})

def greeting_view(request):
    books = {
        "The night rider": "Ben Author",
        "The Justice": "Don Abeman"}
    return render(request, 'simple_tag_template.html', {'username': 'jdoe', 'books': books})