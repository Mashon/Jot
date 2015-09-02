Rails.application.routes.draw do
  resources :links
  devise_for :users
  resources :jots
    root 'jots#homepage'
    get 'jots/landing'
    get 'tags/:tag', to: 'links#index', as: :tag
end
