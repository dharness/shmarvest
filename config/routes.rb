Rails.application.routes.draw do
  devise_for :users
  get 'landing/index'

  root 'landing#index'

  get '*unmatched_route', :to => 'application#raise_not_found!'
end
