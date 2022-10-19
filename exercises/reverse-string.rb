def reverseString(string)
  string.size < 2 ? string : string[-1] + reverseString(string[1..-2]) + string[0]
end 


puts reverseString("Hi, i'm about to be reversed")