Rails.application.routes.draw do

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
