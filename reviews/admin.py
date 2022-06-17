from django.contrib import admin

from reviews.models import (Publisher, Contributor, Book, BookContributor, Review)

# class BookAdmin(admin.ModelAdmin):
#     date_hierarchy = 'publication_date'
#     list_display = ('title', 'isbn13')
#     list_filter = ('publisher','publication_date')
#     def isbn13(self, obj):
#         return "{}-{}-{}-{}-{}".format(obj.isbn[0:3], obj.isbn[3:4],
#                                                obj.isbn[4:6], obj.isbn[6:12],
#                                                obj.isbn[12:13])

class BookAdmin(admin.ModelAdmin):
    model = Book
    list_display = ('title', 'isbn', 'get_publisher', 'publication_date')
    search_fields = ['title', 'publisher__name']

    def get_publisher(self, obj):
        return obj.publisher.name

def initialled_name(obj):
    initials = ''.join([name[0] for name in obj.first_names.split(' ')])
    return "{}, {}".format(obj.last_names, initials)


class ContributorAdmin(admin.ModelAdmin):
    list_display = ('last_names', 'first_names')
    search_fields = ('last_names__startswith', 'first_names')
    list_filter = ('last_names',)


# Register your models here.
admin.site.register(Publisher)
admin.site.register(Contributor, ContributorAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(BookContributor)
admin.site.register(Review)