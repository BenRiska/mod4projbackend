Rails.application.routes.draw do
  resources :listitems
  resources :comments
  resources :playlists
  resources :shows
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
