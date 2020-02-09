# frozen_string_literal: true

class ProductsPromotion < ApplicationRecord
  belongs_to :product
  belongs_to :promotion
end
