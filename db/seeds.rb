require 'json'
require 'open-uri'

puts 'destroy ingredients'
Ingredient.destroy_all

puts 'create ingredients'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_list = open(url).read
ingredients = JSON.parse(serialized_list)['drinks']

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
end

puts 'ingredients created'
