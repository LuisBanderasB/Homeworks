def newNumber(number)
    arrNumber = number.to_s.split('')
    permutations = arrNumber.permutation.to_a
    cleanedPermutations = []

    permutations.each do |permutation|
        if permutation[0].to_i != 0
            cleanedPermutations.push(permutation)
        end
    end

    if cleanedPermutations.min().join.to_i < number
        return false
    else 
        return true
    end
end

puts newNumber(859)