class CreateJoinTableProductIngredient < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :ingredients do |t|
      t.index [:product_id, :ingredient_id]
      t.string :ingredient_amount
    end
  end
end
