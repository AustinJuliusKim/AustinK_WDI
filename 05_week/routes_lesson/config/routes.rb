Rails.application.routes.draw do
  #You can have the root of your site routed with "root"
  root 'posts#index'
  #GET request to /posts. Shows index of all posts
  get '/posts' => 'posts#index'
  #POST requests to /posts. Creates a new post
  post '/posts' => 'posts#create'
  #GET request to '/posts/new'. Shows the form to create a new post
  get 'posts/new' =>'posts#new', as: :new_post
  #GET request to '/posts/:id/edit'. Shows the edit form
  get '/posts/:id/edit' => 'posts#edit', as: :edit_post
  #GET request to '/posts/:id', shows individual post
  get '/posts/:id' => 'posts#show', as: :post
  #PUT & PATCH requests to '/posts/:id' will update an individual post
  put '/posts/:id' => 'posts#update'
  patch '/posts/:id' => 'posts#update'
  #DELETE request to '/posts/:id' destroys an individual post
  delete '/posts/:id' => 'posts#destroy'
end
