# frozen_string_literal: true

class AddDepartmentToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :department, foreign_key: true
  end
end
