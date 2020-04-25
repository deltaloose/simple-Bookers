Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#top'
  resources :books, only: [:create, :index, :show]
  resources :users, only: [:show, :index, :edit]
end