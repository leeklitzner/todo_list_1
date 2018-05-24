Rails.application.routes.draw do
  resources :lists
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
end
