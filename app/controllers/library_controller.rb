class LibraryController < ApplicationController
  def index
    @books = Book.all
    @checkouts = Checkout.all
    @users = User.all
  end
end
