# frozen_string_literal: true

class CreateProductsPromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :products_promotions do |t|
      t.references :product, foreign_key: true
      t.references :promotion, foreign_key: true

      t.timestamps
    end
  end
end
