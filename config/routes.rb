Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcomes#index' 
  resources :golfs
  resources :carsharings
  resources :users

  namespace :admin do
    resources :carsharings, :golfs
    root 'admin#index'
  end
  
end

