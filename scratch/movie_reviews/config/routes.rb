Rails.application.routes.draw do
  root "movies#index"
  get "movies/" => "movies#index"
  get "movies/new" => "movies#new", as: :new_movie
  post "movies/" => "movies#create"
  get "movies/:id" => "movies#show", as: :movie
  post "movies/:id/reviews" => "reviews#create", as: :movie_reviews

  
end
