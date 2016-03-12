Rails.application.routes.draw do

  root 'welcome#index'

  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'

  get 'users/new' => 'users#new', as: :register
  post 'users' => 'users#create', as: :users

  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/new'
  get 'posts/create'
  get 'posts/delete'

end
