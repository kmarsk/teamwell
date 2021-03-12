Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :employees do
    resources :activities, only: [:index, :show]
  end

  namespace :trainers do
    resources :activities, only: [:show, :new, :create, :destroy]
  end
end
