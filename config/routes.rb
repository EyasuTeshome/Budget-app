Rails.application.routes.draw do
  unauthenticated do
    root "home#index"
  end

  devise_for :users

  root 'categories#index', as: "categorytrack"

  resources :users

  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :expenses, only: [ :new, :show, :create, :destroy]
  end

end
