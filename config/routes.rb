Rails.application.routes.draw do
  get 'welcom/index'

  root 'welcom#index'
end
