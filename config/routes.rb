Rails.application.routes.draw do
  # root to: 'landing_page#index'
  # get 'landing_page/index'
  devise_for :users
  resources :users
  root to: 'products#index'
  resources :products do
    resources :reviews
  end
end
