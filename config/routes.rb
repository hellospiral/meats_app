Rails.application.routes.draw do
  root :to => 'categories#index'

  resources :categories do
    resources :meats
  end

  resources :meats do
    resources :reviews
  end

  resources :search, only: [:index]
end
