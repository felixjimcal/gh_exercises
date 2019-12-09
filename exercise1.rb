# Ask for a Name, subname and last name
# Show the full name in upercase

#Initialize vars
name = "", second_name = "", last_name = ""

print "Write your name: "
name = gets.chomp.upcase

print "Write your second name: "
second_name = gets.chomp.upcase

print "Write your last name: "
last_name = gets.chomp.upcase

# Print text
print "Hello " + name + " " + second_name + " " + last_name
