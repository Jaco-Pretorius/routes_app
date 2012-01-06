# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Product.create!(name: 'iPhone', description: 'Apple iPhone 4S', category: 'Electronics')
  Product.create!(name: 'Kindle', description: 'Amazon Kindle', category: 'Electronics')
  Product.create!(name: 'The Rails 3 Way', description: 'The Rails 3 Way', category: 'Books')
  Product.create!(name: 'A Book Apart', description: 'A Book for People who make websites', category: 'Books')
end