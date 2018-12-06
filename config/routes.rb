Rails.application.routes.draw do
  resources :users
  root to: 'business_logic#input', as: :input
  get '/output', to: 'business_logic#output', as: :output
  get '/auth', to: 'session#auth', as: :auth
  get '/login', to: 'session#login', as: :login
  get '/logout', to: 'session#logout', as: :logout
end
