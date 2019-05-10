class CreateJoinTableProductAllergen < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :allergens do |t|
      t.index [:product_id, :allergen_id]
      t.index [:allergen_id, :product_id]
    end
  end
end
