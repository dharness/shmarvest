Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'signup' }
  
  get 'landing/index'
  get '/welcome', to: 'welcome#index'

  root 'landing#index'
end
