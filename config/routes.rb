Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#about'
  resources :projects
  get 'about', to: 'pages#about'
  get 'home', to: 'pages#home'
  get 'music', to: 'pages#music'
end
