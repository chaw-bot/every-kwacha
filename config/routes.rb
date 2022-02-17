Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: [:index]
  resources :categories, only: [:index, :new, :create, :show] do
    resources :records, only: [:index, :new, :create]
  end
end
