def fibonacci(number)
  #base case
  return number if number < 2
  return fibonacci(number-1) + fibonacci(number-2)
end
puts fibonacci(11)