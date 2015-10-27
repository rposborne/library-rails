class BooksController < ApplicationController
  def index
  end

  def new
  end

  def create
    b = Book.create! title: params[:book_title], author: params[:book_author]
    redirect_to "/"
  end

  def checkin
    b = Book.find(params[:book_id])
    b.checked_out = false
    b.save
    redirect_to "/"
  end

  def show
    @book = Book.find params[:id]
    @checkouts = Checkout.where book_id: @book.id
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/"
  end
end
