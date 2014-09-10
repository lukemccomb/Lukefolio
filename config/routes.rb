Rails.application.routes.draw do

  root 'main#index'

  post "register" => "registration#create", as: :register

  get "signin" => "sessions#new", as: :signin

  post "signin" => "sessions#create"

  get "/signout" => "sessions#destroy", as: :signout

  resources :images do
    resources :comments
  end

end