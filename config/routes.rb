Rails.application.routes.draw do
  devise_for :users
  resources :jots
    root 'jots#homepage'
end
