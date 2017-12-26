Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events do
    resources :shifts
  end
  resources :locations do
    resource :shift_locations
  end
root 'welcome#index'
end
