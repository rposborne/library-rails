Rails.application.routes.draw do
  root "library#index"

  get   "/add_book" => "books#new"
  post  "/add_book" => "books#create"

  post "/books/:book_id/return" => "books#checkin"

  resources :books do
    resources :checkouts
  end
end
