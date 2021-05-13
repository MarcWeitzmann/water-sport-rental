Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [ :index ] do
    resources :items, only: [ :index, :show ]
  end

end
