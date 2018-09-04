Rails.application.routes.draw do
  get 'posts/create'

  get 'posts/update'

  get 'posts/edit'

  get 'posts/destroy'

  get 'posts/index'

  get 'posts/show'

  resources :posts

  devise_for :users

  root 'study#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
