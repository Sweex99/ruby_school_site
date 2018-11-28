Rails.application.routes.draw do

 resources :home_works

  get '/xml/:id', to: 'xml#show' , as: 'xml'
  get 'subject', to: 'xml#subject', as: 'subject'
  
  get 'posts/new'

  resources :posts

  get '/posts/new/', to: 'posts#new', as: 'new'
  get '/posts/destroy/:id', to: 'posts#destroy', as: 'destroy'


  devise_for :users

  root 'study#index'

 mount LetterOpenerWeb::Engine, at: "/letter_opener"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
