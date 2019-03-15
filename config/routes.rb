Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcomes#index' 
  resources :golfs do 
    resources :golfcomments, :golfcarsharings
  end

  namespace :admin do
    resources :carsharings, :golfs
    root 'admin#index'
  end
  
  resources :users do
    resources :conversations, only: [:show, :create]
  end
  resources :privatemessages
  resources :carsharings do 
    resources :passengers, only: [:new, :create, :index]
    resources :carsharing_reviews, only: [:new, :create]
  end
end

