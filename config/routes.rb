Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new]
  post 'users/new', to: 'users#create'
  get 'new', to: 'sessions#new'
  post 'create', to: 'sessions#create'
  get 'homepage', to: 'users#homepage'
end
