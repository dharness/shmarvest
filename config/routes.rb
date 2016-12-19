Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' }
  get 'landing/index'

  root 'landing#index'

  get '*unmatched_route', :to => 'landing#index'
end
