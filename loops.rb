# 1. Un if que se ejecute cuando el input recibido del usuario no sea “Apple”
puts “Enter your favorite fruit”
fruit = gets.chomp.downcase
unless fruit == “apple”
  puts “Nice choicce”
end

# 2. Un loop que ejecute checking for X… y si es par, imprima el número (5 ... 5000)
for i in 5..5000 do
  puts "Checking for #{i}"
  next unless i.even?
  puts i
end