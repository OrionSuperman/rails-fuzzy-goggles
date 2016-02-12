Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/:id' => 'sessions#show'

  get 'sessions/new'

  post 'sessions/create' => 'sessions#create'

  get 'sessions/edit'

  get 'sessions/update'

  get 'sessions/delete'

  get '/sessions/new' => 'sessions#new'
end
