Flower1::Application.routes.draw do

  get "content/admin/content_data"

  devise_for :admins

  get "admin/index"

	namespace :admin do
  	resource  :content_data, 	:only => [:edit, :update]
	end
  
  resources :categories do
    resources :subcategories
  end

  resources :subcategories, :only => [] do
    resources :plants
  end

  # resources :plants

  post 'images/upload'
  get 'home/change_locale'

  root :to => 'home#index'

  devise_scope :admin do
    match '/logout' => 'devise/sessions#destroy'
  end

  match ':controller(/:action(/:id))(.:format)'
end
