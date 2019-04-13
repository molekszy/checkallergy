class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category
      t.references :brand
      t.text :description
      t.references :allergen
      t.references :ingredient
      t.string :ingredient_amount

      t.timestamps
    end
  end
end
