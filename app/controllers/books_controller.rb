class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @id = params[:id]
    @book = Book.find(@id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
  end

  def edit
    @id = params[:id]
    @book = Book.find(@id)
  end

  def destroy
    id = params[:id]
    book = Book.find(id)
    book.destroy
    redirect_to books_path
  end

end