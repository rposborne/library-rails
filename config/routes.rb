Rails.application.routes.draw do

  get 'sign-up', controller: :registrations, action: :new
  post 'sign-up', controller: :registrations, action: :create

  post 'login', controller: :sessions, action: :create
  delete 'logout', controller: :sessions, action: :destroy

  root "library#index"

  get   "/add_book" => "books#new"
  post  "/add_book" => "books#create"

  post "/books/:book_id/return" => "books#checkin"

  resources :books do
    resources :checkouts
  end
end
