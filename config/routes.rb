Rails.application.routes.draw do
  resources :links
  devise_for :users
  resources :jots
    root 'jots#homepage'
    get '/tags' => 'links#tags'
end
