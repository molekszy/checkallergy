class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.text :description
      t.references :allergen, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.string :ingredient_amount

      t.timestamps
    end
  end
end
