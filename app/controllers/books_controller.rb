class BooksController < ApplicationController
  def index
    @books=Book.all
  end

  def create
    @book=Book.new
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
      params.require(:books).permit(:title, :body)
  end

end
