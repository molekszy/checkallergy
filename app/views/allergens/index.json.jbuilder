# frozen_string_literal: true

json.array! @allergens, partial: "allergens/allergen", as: :allergen
