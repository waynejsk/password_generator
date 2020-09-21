Rails.application.routes.draw do
  get 'users/new'
  resources :keys
  root 'keys#new'
end
