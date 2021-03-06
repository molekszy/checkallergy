# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :products
  has_many :favorite_products
  has_many :favorites, through: :favorite_products, source: :product
  validates :pesel, format: { with: /\d{11}/,
                              message: "should contain 11 digits", allow_blank: true }
end
