Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'signup' }
  
  get 'landing/index'

  constraints subdomain: /./ do
    get '/welcome', to: 'welcome#index'
    get '/time', to: 'time#index'
    get '/projects', to: 'projects#index'
    get '/reports', to: 'reports#index'
  end

  root 'landing#index'
end
