def sumWithBitwise(x,y)
    while y != 0
        carry = x & y
        x = x ^ y
        y = carry << 1
    end
    return x;
end

def customSubstraction(x, y)
    negativeY = sumWithBitwise(~y, 1)
    result = sumWithBitwise(x, negativeY)
end

puts customSubstraction(6,7)