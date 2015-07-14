Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  namespace :api do
    resources :bowties, only: [:index, :show, :create] 
  end

end
