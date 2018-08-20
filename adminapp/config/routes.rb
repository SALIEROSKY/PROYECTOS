Rails.application.routes.draw do
  resources :transport_materials
  resources :visits
  resources :uses
  resources :categories
  resources :environments
  resources :recycling_centers
  resources :materials
  resources :multimedia
  resources :users
  resources :multimedia_types
  resources :material_types
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
