Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do 
  namespace :v1 do
    resources :motorcycles, only: [:index,:show]
    resources :users do
      resources :reservations, only: [:index, :create, :destroy, :show]
    end

    post 'login', to: 'authentication#create'
    post 'register', to: 'users#create'
    get 'authenticate', to: 'authentication#token_validation'
  end
  end
end
