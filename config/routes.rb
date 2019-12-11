Rails.application.routes.draw do
  resources :tasks
  # root "home#index"
  root "tasks#new"
  devise_for :users 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
