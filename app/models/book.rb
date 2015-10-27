class Book < ActiveRecord::Base
  validates_presence_of :title, :author

  has_many :users, through: :checkouts

  def user_who_has
    if checked_out
      c = Checkout.where("book_id = #{id}").last
      return User.find c.user_id
    end
  end
end
