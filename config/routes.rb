Rails.application.routes.draw do
  get 'users/' => 'users#index'

  get 'users/show'

  post '/users/create' => 'users#create'

  get 'users/update'

  get 'users/new' => 'users#new'

  get 'users/delete'

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
