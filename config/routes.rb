Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :articles
  resources :images
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/categories/:category' => 'categories#show'
end
