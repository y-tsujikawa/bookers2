Rails.application.routes.draw do
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  devise_for :users

  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:show, :edit]
end
