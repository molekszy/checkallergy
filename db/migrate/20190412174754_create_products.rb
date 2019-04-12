class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category_id
      t.references :brand_id
      t.text :description
      t.references :allergen_id
      t.references :ingredient_id
      t.string :ingredient_amount

      t.timestamps
    end
  end
end
