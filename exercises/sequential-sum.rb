def sumSequential(x, y)
    numberOfElements = (x..y).to_a.length

    sum = (numberOfElements/2)*(x + y)
end

puts sumSequential(1,10)