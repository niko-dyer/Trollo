Rails.application.routes.draw do
  root 'boards#index'
  resources :boards do
    resources :lists
  end

  resources :lists do
    resources :tasks
  end
end
