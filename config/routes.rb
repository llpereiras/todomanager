Rails.application.routes.draw do
  resources :tasks
  resources :lists
  devise_for :users
  root :to => "home#index"
end
