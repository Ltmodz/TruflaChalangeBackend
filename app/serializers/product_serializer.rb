class ProductSerializer < ActiveModel::Serializer
  has_many :promotions
  attributes :id,:name, :price 
end
