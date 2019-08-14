Rails.application.routes.draw do

  resources :schedules
  get 'joins/add_student/:id', to: 'joins#add_student', as: 'add_student'
  resources :joins

  get 'show_user/show'

  resources :remote_study do
    get 'show', to: 'remote_study#show', as: 'subject'
  end

  resources :collective

  resources :student_report

  get 'admin_panels/show_user', to: 'admin_panel#show_user', as: 'show_user'
  get 'admin_panels/add_admin/:id', to: 'admin_panel#add_admin', as: 'add_admin'
  get 'admin_panels/delete_admin/:id', to: 'admin_panel#delete_admin', as: 'delete_admin'
  get 'admin_panels/new_year', to: 'admin_panel#new_year', as: 'new_year'
  get 'admin_panels/show_my_student', to: 'admin_panel#show_my_student', as: 'my_class'
  get 'admin_panels/implementation_new_year', to: 'admin_panel#implementation_new_year', as: 'implementation_new_year'
  get 'admin_panel/add_role', to: 'admin_panel#add_role', as: "add_role"
  get 'admin_panel/new_teacher_student', to: 'admin_panel#new_teacher_student', as: 'new_teacher_student'

  resources :pdfs do
    member do
      get 'download'
    end
  end

  resources :home_works

  get 'posts/new'

  resources :posts

  get '/posts/new/', to: 'posts#new', as: 'new'
  get '/posts/destroy/:id', to: 'posts#destroy', as: 'destroy'

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
  }

  root 'study#index'

  get 'join_to_school/new/', to: 'join_to_school#new'

end
