Rails.application.routes.draw do
   get  '/supplier', to: 'suppliers#new'
  # get 'suppliers/index'
  #get 'sessions/new'
  get 'users/index'
  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
