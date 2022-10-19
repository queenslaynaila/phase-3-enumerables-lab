require 'pry'

 
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

 
def get_names(spicy_foods)
   spicy_foods.map do |food|
    food[:name]
   end
end
get_names(spicy_foods)

 
def spiciest_foods(spicy_foods)
   spicy_foods.filter do |food|
     food[:heat_level] > 5
   end
end

 
def print_spicy_foods(spicy_foods)
   spicy_foods.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
   end
end

 
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

 
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

 
def print_spiciest_foods(spicy_foods)
  filtered_spicy = spiciest_foods(spicy_foods)
  print_spicy_foods(filtered_spicy)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total = 0
  spicy_foods.each do |food|
    total = food[:heat_level] + total
  end
  total / spicy_foods.length
end
