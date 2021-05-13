Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories
  resources :items do
    resources :rentals, only: [ :new, :create, :destroy]
  end

end
