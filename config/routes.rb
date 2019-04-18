Rails.application.routes.draw do
  resources :products
  resources :allergens
  resources :brands
  resources :product_categories
  resources :ingredients

  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
