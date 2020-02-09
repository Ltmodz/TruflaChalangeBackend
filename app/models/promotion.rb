# frozen_string_literal: true

class Promotion < ApplicationRecord
  has_many :products_promotions
  has_many :products, through: :products_promotions
end
