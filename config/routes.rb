Rails.application.routes.draw do
  post '/secrets/create' => 'secrets#create'

  get '/secrets' => 'secrets#index'

  delete '/secrets/delete' => 'secrets#destroy'

  get '/users/' => 'users#index'

  get 'users/show'

  post '/users/create' => 'users#create'

  get 'users/update'

  get 'users/new' => 'users#new'

  delete '/users/delete' => 'users#destroy'

  get '/sessions' => 'sessions#index'

  post '/sessions/create' => 'sessions#create'

  get '/sessions/edit' => 'sessions#edit'

  get '/sessions/update' => 'sessions#update'

  get '/sessions/delete' => 'sessions#destroy'

  get '/sessions/new' => 'sessions#new'

  get 'users/:id/edit' => 'users#edit'

  get '/sessions/:id' => 'sessions#show'

  post '/users/:id' => 'users#update'

  get '/users/:id' => 'users#show'
end
