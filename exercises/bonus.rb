def getBonus(days)
  firstBonus = (33..40).member?(days)
  secondBonus = (41..48).member?(days)
  thirdBonus = days > 48

  return 0 unless days > 32
  
  if firstBonus
    bonus = (days - 32)*365

  elsif secondBonus
    secondBonusDays = (days - 40)
    bonus = (8*365) + (secondBonusDays*525)

  elsif thirdBonus
    thirdBonusDays = (days - 48)
    bonus = (8*365) + (8*525) + (thirdBonusDays * 625)
  end
end

puts getBonus(45)