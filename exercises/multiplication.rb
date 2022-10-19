def multiplicationFunction(number1, number2)
  result = 0
  for i in 1..number1 do
    result += number2
  end
  result
end

puts multiplicationFunction(5, 5)