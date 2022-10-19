def mapString(string)
  chars = Hash.new
  for i in 0...string.length do
    chars.has_key?(string[i]) ?
      chars[string[i]].push(i)
    :
      chars[string[i]] = [].push(i)
  end
  chars
end  
puts mapString("dodo")

