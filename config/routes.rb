Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :movies
  resources :theaters do
    resources :showings
  end

  resources :screens, only: [:show, :new, :index]
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]
  delete "/logout", to: "sessions#destroy", as: "logout"
end
