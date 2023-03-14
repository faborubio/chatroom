Rails.application.routes.draw do
  get 'users/show'
  resources :rooms do
    resources :messages
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "user/:id", to: "user#show", as: "user"
  # Defines the root path route ("/")
  # root "articles#index"
end
