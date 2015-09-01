Rails.application.routes.draw do
  resources :jots
  root to: "jot#index"
end
