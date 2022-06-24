#from django.shortcuts import render

# Create your views here.

# Exercise 11.04

from django.http import HttpResponse
from django.views.generic.edit import FormView, DeleteView
from django.views import View

from .forms import BookForm



from .models import Book
from django.views.generic import DetailView

class BookRecordFormView(FormView):
    template_name = 'book_form.html'
    form_class = BookForm
    success_url = '/book_management/entry_success'

    def form_valid(self, form):
        form.save()
        return super().form_valid(form)

class FormSuccessView(View):
    def get(self, request, *args, **kwargs):
        return HttpResponse("Book record saved successfully")

# Delete view

class BookDeleteView(DeleteView):
    model = Book
    template_name = 'book_delete_form.html'
    success_url = '/book_management/delete_success'

# Read view
class BookRecordDetailView(DetailView):
    model = Book
    template_name = 'book_detail.html'