Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :employees do
    resources :activities, only: [:index, :show]
    resources :dashboards, only: [:show]
  end

  namespace :trainers do
    resources :activities, only: [:show, :new, :create, :destroy]
    resources :dashboards, only: [:index]
  end
end
