Rails.application.routes.draw do
  get 'user_feedbacks/new'

  get 'user_feedbacks/show'

  resources :comments
  devise_for :users, controllers: {registrations: "registrations"} 
  get 'pages/info'

  resources :pages 
  resources :users
  resources :ideas
  resources :user_feedbacks
  root :to => 'pages#info'

  mount Rapidfire::Engine => "/rapidfire"
  
end