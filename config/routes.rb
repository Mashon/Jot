Rails.application.routes.draw do
  devise_for :users
  resources :jots
  root to: "jot#index"
end
