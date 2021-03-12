Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :employees do
<<<<<<< HEAD
    resources :activities, only: [:index, :show]
    resources :dashboards, only: [:index]
=======
    resources :dashboards, only: [:index]
     resources :activities, only: [:index, :show] do
      resources :bookings, only: [:create, :show] 
     end
>>>>>>> 04fd508943e0cc9d730f92faec8241cb2ead8067
  end

  namespace :trainers do
    resources :activities, only: [:show, :new, :create, :destroy]
    resources :dashboards, only: [:show]
  end
end
