Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'tags/index'
  get 'authors/index'
  get 'posts/index'
  get 'posts/:id', to: "posts#show"
  get 'pages/search'
  get 'pages/results'
  get 'pages/home'

  namespace :admin do
    root to: 'admin#index'
    resources :posts
    resources :tags
    resources :authors
  end
end
