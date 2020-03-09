Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :booking_details
  resources :listings
  resources :baby_sitter_registrations
  resources :dashboard

  get '/baby_sitters/:id', to: 'baby_sitter_registrations#show', as: :baby_sitter
  get '/listings', to: 'listings#index'
  resources :home

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
