Rails.application.routes.draw do
  resources :categories do
    resources :meats
  end

  resources :meats do
    resources :reviews
  end
end
