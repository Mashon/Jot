Rails.application.routes.draw do
  resources :sites
  resources :links
  devise_for :users
  resources :jots
    root 'sites#homepage'
    get 'tags/:tag', to: 'links#index', as: :tag
end
