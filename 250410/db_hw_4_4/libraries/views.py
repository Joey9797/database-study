from django.shortcuts import render, redirect
from .models import Book, Review
from .forms import ReviewForm

# Create your views here.
def index(request):
    books = Book.objects.all()
    context = {
        'books': books
    }
    return render(request, 'libraries/index.html', context)

def detail(request, book_pk):
    book = Book.objects.get(pk=book_pk)
    review_form = ReviewForm()
    reviews = book.review_set.all()
    context = {
        'book': book,
        'review_form': review_form,
        'reviews': reviews,
    }
    return render(request, 'libraries/detail.html', context)


def create_review(request, book_pk):
    book = Book.objects.get(pk=book_pk)
    if request.method == "POST":
        review_form = ReviewForm(request.POST)
        review = review_form.save(commit=False)
        review.user = request.user
        review.book = book
        review.save()
        return redirect('libraries:detail', book.pk)
    return render(request, 'libraries/detail.html')


def delete_review(request, book_pk, review_pk):
    review = Review.objects.get(pk=review_pk)
    if request.user == review.user:
        review.delete()
    return redirect('libraries:detail', book_pk)
