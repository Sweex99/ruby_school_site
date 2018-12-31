Rails.application.routes.draw do
  get 'admin_panels/show_user', to: 'admin_panel#show_user', as: 'show_user'
  get 'admin_panels/add_admin/:id', to: 'admin_panel#add_admin', as: 'add_admin'
  get 'admin_panels/delete_admin/:id', to: 'admin_panel#delete_admin', as: 'delete_admin'
  get 'admin_panels/new_year', to: 'admin_panel#new_year', as: 'new_year'
  get 'admin_panels/show_my_student', to: 'admin_panel#show_my_student', as: 'my_class'
  get 'admin_panels/implementation_new_year', to: 'admin_panel#implementation_new_year', as: 'implementation_new_year'

  resources :pdfs do
    member do
      get 'download'
    end
  end

  delete '/pdfs/:id', to: 'pdfs#destroy'

  resources :home_works

  get '/xml/:id', to: 'xml#show', as: 'xml'
  get 'subject', to: 'xml#subject', as: 'subject'

  get 'posts/new'

  resources :posts

  get '/posts/new/', to: 'posts#new', as: 'new'
  get '/posts/destroy/:id', to: 'posts#destroy', as: 'destroy'

  devise_for :users

  root 'study#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
