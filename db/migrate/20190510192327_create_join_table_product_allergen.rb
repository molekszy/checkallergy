# frozen_string_literal: true

class CreateJoinTableProductAllergen < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :allergens do |t|
      t.index %i[product_id allergen_id]
      t.index %i[allergen_id product_id]
    end
  end
end
