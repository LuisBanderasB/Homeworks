# Keyword splat
puts "Keyword splat:"
def keyword(**data)
  data = {test: 3} if data.empty?
  puts data
end

data = {
  name: "Saul",
  heigth: 1.80,
  weight: 70,
  age: 20,
}

keyword(data)
print "-" * 35
puts

# Splat arguments
puts "Splat:"
def animals(name,*characteristics)
  puts name
  puts characteristics
end

animals("Gato", "blanco", "4 patas", "Mamifero", "Peludo")
print "-" * 35
puts

# Optional and normal variable
puts "Optional and normal variable:"
def car(color = "red", brand)
  puts color
  puts brand
end

car("blue", "Mercedez")