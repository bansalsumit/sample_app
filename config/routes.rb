Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get '/signup', to: 'users#new'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/show', to: 'static_pages#show'
  resources :users
  resource :profile
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
