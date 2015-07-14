Rails.application.routes.draw do

  root 'pages#home'

  get 'user_feedbacks/index'

  get 'user_feedbacks/new'

  get 'user_feedbacks/show'

  resources :comments
  devise_for :users, controllers: {registrations: "registrations"}
  get 'pages/info'

  resources :users
  resources :ideas
  resources :user_feedbacks

  mount Rapidfire::Engine => "/rapidfire"

end
