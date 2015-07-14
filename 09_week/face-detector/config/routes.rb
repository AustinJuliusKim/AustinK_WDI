Rails.application.routes.draw do
  root 'face_search#new'
  post '/face_search' => 'face_search#create', as: :face_search
end
