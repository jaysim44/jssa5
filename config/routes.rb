Rails.application.routes.draw do
  get 'line_items/create'

  get 'line_items/update'

  get 'line_items/destroy'

  get 'carts/show'

  devise_for :users
  get 'home/index'

  root 'home#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
  resources :products
end