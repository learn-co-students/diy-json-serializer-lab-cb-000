Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:index, :new, :create, :show] do
    member do
      get 'description'
      get 'inventory'
      get 'data'
    end
  end

root 'products#index'

end
