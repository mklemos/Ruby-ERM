Rails.application.routes.draw do
  get '/csrf-token', to: 'application#csrf_token'
  resources :accounts
  resources :transactions
  resources :products
  # more routes here
end
