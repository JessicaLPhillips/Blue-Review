Rails.application.routes.draw do
  get 'tags/index'
  get 'authors/index'
  get 'posts/index'
  get 'posts/:id', to: "posts#show"
  get 'pages/search'
  get 'pages/results'
  get 'pages/home'

  namespace :admin do
    resources :posts
    resources :tags
    resources :authors
  end
end
