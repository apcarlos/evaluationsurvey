Rails.application.routes.draw do
  resources :comments
  devise_for :users, controllers: {registrations: "registrations"} 
  get 'pages/info'

  resources :pages 
  resources :users
  resources :ideas
  root :to => 'pages#info'

  mount Rapidfire::Engine => "/rapidfire"
  
end