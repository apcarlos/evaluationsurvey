Rails.application.routes.draw do

  root 'pages#info'

  get 'user_feedbacks/index'

  get 'user_feedbacks/new'

  get 'user_feedbacks/show'

  resources :comments
  devise_for :users, controllers: {registrations: "registrations"}
  get 'pages/info'

  resources :users do
    collection do
      post 'assign_admin_role' => 'users#assign'
      post 'revoke_admin_role' => 'users#revoke'
    end
  end
  resources :ideas
  resources :user_feedbacks

  mount Rapidfire::Engine => "/rapidfire"

end
