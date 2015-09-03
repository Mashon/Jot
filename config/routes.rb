Rails.application.routes.draw do
  resources :sites
  resources :links
  devise_for :users
  resources :jots
    root 'sites#homepage'
    get 'tags/:tag', to: 'jots#index', as: :tag

end
