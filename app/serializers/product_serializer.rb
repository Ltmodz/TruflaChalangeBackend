# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  has_many :promotions
  attributes :id, :name, :price
end
