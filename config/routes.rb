Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcomes#index' 
  resources :golfs
  resources :carsharings do 
    resources :passengers, only: [:new, :create, :index]
  end
  resources :users
end

