Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  resources :books
  resources :reservations

  delete "/remove_reservation", to: "pages#remove_reservation"
  get "/user_books", to: "pages#userbooks"
  post "/reserved", to: "pages#reserved"
  get "/make_reservation", to: "pages#make_reservation"
  post "/make_reservation", to: "pages#make_reservation"

  root to: "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
