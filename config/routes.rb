Rottenpotatoes::Application.routes.draw do
  resources :movies
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  # map '/' to be a redirect to '/movies'
  root "sessions#create"
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
end
