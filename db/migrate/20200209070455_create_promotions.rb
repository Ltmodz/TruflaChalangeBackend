# frozen_string_literal: true

class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :code
      t.boolean :active
      t.float :discount

      t.timestamps
    end
  end
end
