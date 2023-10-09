Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews
    end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  root "sessions#create"
  post '/movies/search_tmdb' => 'movies#search_tmdb', :as => 'search_tmdb'
end
