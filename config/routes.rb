Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  get 'products/index'

  get 'line_items/create'

  get 'line_items/update'

  get 'line_items/destroy'

  get 'carts/show'

  resources :line_items, only: [:create, :update, :destroy], defaults: { format: 'js' }
  resource :cart, only: [:show]
  resources :charges
  resources :products

  devise_for :users, :controllers => {:registrations => "registrations"}



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'

  resources :charges, only: [:new, :create]

end