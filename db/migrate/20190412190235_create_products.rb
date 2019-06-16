# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :product_category
      t.references :brand
      t.text :description
      t.references :allergen

      t.timestamps
    end
  end
end
