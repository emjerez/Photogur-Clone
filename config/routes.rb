Rails.application.routes.draw do
  root 'static_pages#home'


  get  '/home',    to: 'static_pages#home'
  get '/pictures', to: 'pictures#index'
  post '/signup',  to: 'users#create'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :users
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
