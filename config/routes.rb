Rails.application.routes.draw do
  resources :keys
  root 'keys#new'
end
