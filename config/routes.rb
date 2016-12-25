Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'signup' }
  
  get 'landing/index'

  constraints subdomain: /./ do
    get '/welcome', to: 'welcome#index'
  end

  root 'landing#index'
end
