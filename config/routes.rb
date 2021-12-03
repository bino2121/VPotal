Rails.application.routes.draw do
  get 'users/new'
  get 'user/new'
  get "/users/new" => "users#new"
  get "/users/login" => "users#login_form"
  post "/users/login" => "users#login"
  post "/users/logout" => "users#logout"
  post "/users/create" => "users#create"
  get 'users/:id' => "users#show"
  get '/posts/index' => "posts#index"
  get '/posts/new' => 'posts#new'
  post 'posts/create' => "posts#create"
  post "/posts/destroy/:id" => "posts#destroy"
  get '/posts/:id' => "posts#show"
  get '/' => 'home#top'
end
