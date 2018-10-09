Rails.application.routes.draw do
  get 'tags/index'
  get 'authors/index'
  get 'posts/index'
  get 'posts/:id', to: "posts#show"
  get 'pages/search'
  get 'pages/results'
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
