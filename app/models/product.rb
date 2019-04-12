class Product < ApplicationRecord
  has_many :ingredients, dependent: :destroy
  has_many :allergens
  has_one :brand
  has_one :product_category
end
