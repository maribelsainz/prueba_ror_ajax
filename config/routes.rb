Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :companies do
    resources :complains, only: :create
  end
  devise_for :users
  root 'companies#index'
end
