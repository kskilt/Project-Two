Rails.application.routes.draw do
  resources :sessions
  root to: 'welcome#hello'
  get 'welcome/index'
  resources :movies
  resources :theaters do
    resources :showings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
