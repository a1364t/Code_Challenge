Rails.application.routes.draw do
  get '/people/search' => 'people#search'

  resources :people
  resources :locations
  resources :affiliations
end
