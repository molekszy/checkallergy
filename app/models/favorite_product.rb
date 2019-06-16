# frozen_string_literal: true

class FavoriteProduct < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
