Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# get '/users', to: "users#index"
get '/posts', to: "posts#index"
get '/likes', to: "likes#index"
get '/posts/new', to: "posts#new"
post 'posts', to: 'posts#create'
get 'users', to: 'users#index'
post 'users', to: 'users#create'
get 'posts/:id', to: 'posts#show'
post '/likes', to: 'likes#create'
end
