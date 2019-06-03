json.extract! product, :id, :name, :brand_id, :description, :allergen_id, :ingredient_id, :ingredient_amount, :created_at, :updated_at
json.url product_url(product, format: :json)
