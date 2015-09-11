Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resource :orders, only: [:show]
  resources :categories, only: [:index, :show]
  resources :plants, only: [:index, :show] do
    post :order, on: :member
  end

  root :to => 'categories#index'
end
