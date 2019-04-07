Rails.application.routes.draw do
  resources :product_categories
  resources :ingredients
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
