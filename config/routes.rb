Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :users, only: [:edit] do
  member do
    delete :delete_avatar_attachment
    end
  end

  resources :users, only: [:show]

  root to: "welcome#index"

  resources :products
  resources :allergens
  resources :brands
  resources :product_categories
  resources :ingredients
  resources :products do
    match :favorite, on: :member, via: [:put, :delete]
  end

  get '/my-favorite-products/' =>'users#show_favorites'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
