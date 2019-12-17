require_relative '../config/environment.rb'

a1 = Artist.new("Susan", 5)
a2 = Artist.new("Lily", 10)
a3 = Artist.new("Mark", 20)

g1 = Gallery.new("Gallery A", "Boston")
g2 = Gallery.new("Gallery B", "Paris")
g3 = Gallery.new("Gallery C", "New York")

p1 = Painting.new("Fawn", 1000, a1, g3)
p2 = Painting.new("Lamb", 1500, a2, g1)
p3 = Painting.new("Boar", 3000, a3, g2)
p4 = Painting.new("Goat", 400, a1, g2)


binding.pry

puts "Bob Ross rules."
