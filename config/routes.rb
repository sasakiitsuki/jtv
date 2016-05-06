Rails.application.routes.draw do
  devise_for :users
  resources :videos, only: [:index, :new, :create]
  resources :tags, only: [:index, :show]
  root to: "videos#index"
end
