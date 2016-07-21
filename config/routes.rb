Rails.application.routes.draw do

  root 'main#index'

  post "register" => "registration#create", as: :register

  get "signin" => "sessions#new", as: :signin

  post "signin" => "sessions#create"

  get "/signout" => "sessions#destroy", as: :signout

  get "/info" => "main#info"

  resource :search, only: [:show]

  resources :images do
    resources :comments
    resources :favorites
  end

  get "/grid" => "main#grid"

  resources :users do
  end


end
