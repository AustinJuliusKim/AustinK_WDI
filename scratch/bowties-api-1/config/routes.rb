Rails.application.routes.draw do
  root 'static_pages#home'

  namespace :api do
    resources :bowties, only: [:index, :show, :create, :update, :destroy]
  end 
end
