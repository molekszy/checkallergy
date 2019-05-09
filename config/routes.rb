Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
  root to: "welcome#index"

  resources :products
  resources :allergens
  resources :brands
  resources :product_categories
  resources :ingredients

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
