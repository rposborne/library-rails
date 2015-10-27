class CheckoutsController < ApplicationController
  def index
  end

  def new
  end

  def create
    c = Checkout.create! book_id: params[:book_id], user_id: current_user.id
    b = Book.find params[:book_id]
    b.checked_out = true
    b.save
    redirect_to "/"
  end

end
