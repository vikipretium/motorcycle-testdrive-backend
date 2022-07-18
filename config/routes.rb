Rails.application.routes.draw do
  get 'user/index'
  get 'user/destroy'
  get 'user/show'
  get 'user/create'
  get 'user/update'
  get 'reservation/index'
  get 'reservation/destroy'
  get 'reservation/show'
  get 'reservation/create'
  get 'reservation/update'
  get 'motorcycles/index'
  get 'motorcycles/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do 
  namespace :v1 do
    resources :motorcycles, only: [:index,:show]
    resources :users do
      resources :reservations
    end
  end
  end
end
