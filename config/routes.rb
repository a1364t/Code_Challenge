Rails.application.routes.draw do
  root :to => 'people#index'
  get '/people/search' => 'people#search'

  resources :people
  resources :locations
  resources :affiliations
end
