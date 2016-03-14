Rails.application.routes.draw do

  root 'welcome#index'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#delete', as: :logout

  get 'users/new' => 'users#new', as: :register
  post 'users' => 'users#create', as: :users
  get 'users/:username' => 'users#show', as: :user

  get 'posts' => 'posts#index', as: :posts
  get 'posts/new' => 'posts#new', as: :new_post
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show', as: :post
  get 'posts/:id/edit' => 'posts#edit', as: :edit_post
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#delete'

end
