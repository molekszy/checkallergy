class Product < ApplicationRecord
  has_many :ingredients
  has_many :allergens
  has_one :brand
  has_one :product_category
end
