# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Department.create([{ name: 'Groceries' }, { name: 'Fashion' }, { name: 'Electronics' }, { name: 'Toys' }, { name: 'Home appliances' }])
Department.all.each do |department|
  100.times { department.products.create(name: Faker::Name.unique.name.downcase, price: Faker::Number.decimal(l_digits: 3)) }
end

100.times do
  promotion = Promotion.create(code: Faker::Code.nric, active: Faker::Boolean.boolean(true_ratio: 0.3), discount: Faker::Number.within(range: 1..20))
  Product.find(Faker::Number.within(range: 1..500)).promotions << promotion
end
