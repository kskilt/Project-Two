# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :movies
  resources :theaters do
    resources :showings
  end

  resources :screens, only: %i[show new index]
  resources :users, only: %i[new create]

  resources :sessions, only: %i[new create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
