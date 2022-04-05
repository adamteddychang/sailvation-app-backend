# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :destinations, only: %i[create, show]
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :cruises, only: %i[index show create destroy]
        resources :reservations, only: %i[index show create destroy]
      end
    end
  end
end
