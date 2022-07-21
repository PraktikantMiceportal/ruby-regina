Rails.application.routes.draw do

  
  resources :posts
  resources :desingers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "posts#index"
end
Rails.application.routes.draw do
  

  resources :posts do
    resources :comments
  root "posts#index"
  end
end
