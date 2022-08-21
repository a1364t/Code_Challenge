Rails.application.routes.draw do
  root :to => 'people#index'
  get '/people/search' => 'people#search'

  resources :people do 
    collection { post :import }
  end

  resources :locations
  resources :affiliations
end
