Rails.application.routes.draw do
  resources :companies do
    resources :complains, only: :create
  end
  devise_for :users
  root 'companies#index'
end
