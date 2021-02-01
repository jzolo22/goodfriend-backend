Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :wishlists, only: [:create]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :follows, only: [:create, :destroy, :update]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :create, :update, :destroy]
    end
  end
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :create, :login, :update]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
  end
