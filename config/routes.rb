Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcomes#index' 
  resources :golfs
  resources :carsharings

  namespace :admin do
    resources :carsharings, :golfs
    root 'admin#index'
  end
  
  resources :users do
    resources :conversations, only: [:show, :create]
  end
  resources :privatemessages
end

