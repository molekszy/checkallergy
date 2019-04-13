class Product < ApplicationRecord
  has_many :ingredients
  has_many :allergens
  belongs_to :brand
  belongs_to :product_category
end
