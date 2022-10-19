def getMaxHeight(speed, angle)
    vo2 = speed**2
    radians = angle * ( Math::PI / 180.0 )
    sin2 = Math.sin(radians)**2
    g = 9.80
    height = ((vo2 * sin2)/(g*2)).round
end

def getRange(speed, angle)
    vi2 = speed**2
    radians = angle * ( Math::PI / 180.0 )
    sin = (Math.sin(radians*2))
    g = 9.80

    maxRange = ((vi2*sin)/g).round
end

def calculateJavelin(iSpeed, angle)
    height = getMaxHeight(iSpeed, angle)
    range = getRange(iSpeed, angle)

    result = "The maximum height reached is: #{height} and the range: #{range}"
end

puts calculateJavelin(16, 28)