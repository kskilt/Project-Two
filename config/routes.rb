Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :showings
  resources :movies
  resources :theaters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
