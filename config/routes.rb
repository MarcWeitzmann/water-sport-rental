Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :schools, only: [ :index, :show ] do
    resources :categories, only: [ :index ] do
      resources :items, only: [ :index, :show ]
    end
  end

end
