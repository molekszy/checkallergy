# frozen_string_literal: true

class ProductIngredient < ApplicationRecord
  self.table_name = "products_ingredients"
  belongs_to :product
  belongs_to :ingredient
end
