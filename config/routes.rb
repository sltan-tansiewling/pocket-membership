Rails.application.routes.draw do

  devise_for :users
  root 'onepage#index'
  resources :memberships_users
  resources :memberships
  resources :stores
  resources :malls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
