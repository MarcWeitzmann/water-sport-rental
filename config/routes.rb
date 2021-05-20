Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :schools, only: [ :index, :show ] do
    resources :categories, only: [ :index ] do
      resources :items , only: [ :index, :show, :new, :create ]
    end
  end

  resources :items, only: [:edit, :update, :destroy] do
    resources :rentals, only: [ :index, :show, :new, :create]
  end
  resources :users, only: [:edit, :update]
end
