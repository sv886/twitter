Rails.application.routes.draw do

  get 'login' => 'sessions#new', as: :login

  post 'login' => 'sessions#create'

  get 'users/new'

  get 'users/create'

  get 'posts/index'

  get 'posts/show'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/new'

  get 'posts/create'

  get 'posts/delete'

  root 'welcome#index'


end
