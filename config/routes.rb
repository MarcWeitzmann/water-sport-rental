Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :schools, only: [ :index, :show ] do
    resources :categories, only: [ :index ] do
      resources :items , only: [ :index, :new, :create ]
    end
  end
  resources :rentals, only: [ :index ]

  resources :reviews, only: [ :index, :new, :create ]

  resources :items, only: [:edit, :update, :destroy, :show] do
    resources :reviews, only: [ :create ]
    resources :rentals, only: [ :show, :new, :create]
  end

  namespace :admin do
    resources :schools
  end

  resources :users, only: [:edit, :update]

end
