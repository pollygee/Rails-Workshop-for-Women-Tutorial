class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])

    @review = @book.reviews.build
  end

  def create
    book = Book.find(params[:book_id])
    book.reviews.create(review_params)

    redirect_to book_path(book)


  end

  def review_params
  params.require(:review).permit(:body)
  end
end

