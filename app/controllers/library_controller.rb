class LibraryController < ApplicationController
  skip_before_action :login_required
  def index
    @books = Book.all
    @checkouts = Checkout.all
    @users = User.all
  end
end
