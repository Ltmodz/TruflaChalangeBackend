# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :department
  has_many :products_promotions
  has_many :promotions, through: :products_promotions
end
