Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :follows
    end
  end
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :create, :login]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
  end
