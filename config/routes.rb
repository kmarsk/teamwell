Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :employees do
    resources :dashboards, only: [:index]
    resources :activities, only: [:index, :show] do
      resources :favorites, only: [:create, :destroy]
      resources :bookings, only: [:create, :show]
    end
  end

  namespace :trainers do
    resources :activities, only: [:show, :new, :create, :edit, :update, :destroy] do
      resources :schedules, only: [:create]
    end
    resources :dashboards, only: [:index]

  end
end

