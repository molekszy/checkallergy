# frozen_string_literal: true

class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pesel, :string, null: true
    add_column :users, :birth_date, :date, null: true
  end
end
