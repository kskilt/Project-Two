Rails.application.routes.draw do
  get 'screens/show'
  get 'screens/index'
  get 'screens/new'
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  root to: 'welcome#hello'
  get 'welcome/index'
  resources :movies
  resources :theaters do
    resources :showings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
