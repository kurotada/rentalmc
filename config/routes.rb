Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'tags/new'
  get 'tags/index'
  get 'users/new'
  get 'pages/index'
  get 'homes/index'
  get 'menus/index'
  get 'menus/term'
  get 'menus/question'
  get 'menus/registation'
  get 'topics/index'
  get 'topics/new'
  get 'search' => 'homes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'

  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete 'logout',   to: 'sessions#destroy'
  
  resources :users
  resources :posts
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  
end

