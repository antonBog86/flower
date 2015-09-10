Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  resource :orders, only: [:show]
  resource :categories, only: [:index, :show]
  resource :plants, only: [:index, :show]

  root :to => 'categories#index'
end
