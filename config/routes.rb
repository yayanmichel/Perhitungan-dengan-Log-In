Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  root 'homes#index'
  get 'homes/bmi'
  get 'homes/kalkulator'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
