Rails.application.routes.draw do
  get 'users/new'
  get 'user/new'
  get '/posts/index' => "posts#index"
  get '/posts/new' => 'posts#new'
  get '/posts/:id' => "posts#show"
  post 'posts/create' => "posts#create"
  get "/users/new" => "users#new"
  get '/' => 'home#top'
  #root 'application#goodbye'
end
