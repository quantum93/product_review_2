Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :products
  end
  root to: 'products#index'
  resources :products do
    resources :reviews
  end
end
