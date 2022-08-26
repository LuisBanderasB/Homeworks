# 3 active support methods en date and time
# strftime on a date

# Time.now.next_day(1)
# Time.current
# Time.now.prev_day(100)

# Time.now.strftime("Today is %A")
# Time.now.strftime("%d-%m-%Y at %I:%M %p")

time = Time.now
puts time.day #25
puts time.strftime("Today is %A") #Today is thursday
puts time.thursday? #true

# ----------TEAM----------
# Fancisco Luna
# Luis Banderas