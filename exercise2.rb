# Ask for a Name, subname and last name
# Show the full name in upercase
#Check if values are empty, in that case, ask again

#Initialize vars

name = ''
second_name = ''
last_name = ''

while name.nil? || name.empty?
    print "Write your name: "
    name = gets.chomp.upcase
end

while second_name.nil? || second_name.empty?
    print "Write your second name: "
    second_name = gets.chomp.upcase
end

while last_name.nil? || last_name.empty?
    print "Write your last name: "
    last_name = gets.chomp.upcase
end

print "Hello " + name + " " + second_name + " " + last_name
