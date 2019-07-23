Rails.application.routes.draw do
  devise_for :users
  root to: 'workers#index'
  resources :workers, only: %[index]
end
