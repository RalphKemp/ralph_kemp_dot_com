Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  resources :projects
  get 'about', to: 'pages#about'
  get 'music', to: 'pages#music'
end
