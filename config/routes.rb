Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :employees do
    resources :dashboards, only: [:index]
     resources :activities, only: [:index, :show] do
      resources :bookings, only: [:create, :show]
     end
  end

  namespace :trainers do
    resources :activities, only: [:show, :new, :create, :edit, :update, :destroy]
    resources :dashboards, only: [:index]
  end
end
