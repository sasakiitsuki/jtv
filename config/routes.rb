Rails.application.routes.draw do
  resources :videos, only: [:get, :new, :create]
  root to: "videos#index"
end
