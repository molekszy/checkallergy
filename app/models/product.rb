class Product < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :allergens
  belongs_to :brand
  belongs_to :product_category
  has_one_attached :avatar
end
