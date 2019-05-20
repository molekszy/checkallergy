class ProductIngredient < ApplicationRecord
end

class Amount < ApplicationRecord
  self.table_name = "products_ingredients"
  belongs_to :product
  belongs_to :ingredient
end
