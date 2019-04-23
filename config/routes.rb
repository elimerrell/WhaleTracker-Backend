Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :whale_sightings
      resources :whales
      resources :locations
      resources :sightings
      resources :users
    end 
  end 
end
