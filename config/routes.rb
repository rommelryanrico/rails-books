Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'books#home'
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  post '/books' => 'books#create'
  get '/books/:id', to: 'books#show'
  get '/books/:id/edit' => 'books#edit'
  put '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  root to: 'books#home'
end
