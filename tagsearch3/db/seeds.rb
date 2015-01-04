# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/sample.csv') do |row|
  Product.create(:tag => row[0])
end


CSV.foreach('db/search_word.csv') do |row|
  Futatsume.create(:name => row[0],
               )
end