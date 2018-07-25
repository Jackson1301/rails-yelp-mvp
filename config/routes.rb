Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get "restaurants", to: "restaurants#index"
# get "restaurants/new", to: "restaurants#new"
# get "restaurants/:id", to: "restaurants#show", as: :restaurant
# post "restaurants", to: "restaurants#create"
# get "restaurants/:id/reviews/new", to: "restaurants#new_review", as: :new_review
# post "restaurants/:id/reviews", to: "restaurants#reviews", as: :reviews

  resources :restaurants,  only: [ :index, :show, :new, :create] do
    resources :reviews, only: [ :new, :create ]
  end
end

