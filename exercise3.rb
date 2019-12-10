# Ask for a number of lines, print a tree

numOfLines = 0

print "Num of lines = 0-9: "
numOfLines = gets.to_i

nums = 1
loop do
    puts " " * (numOfLines -= 1) + "*" * nums
    break if numOfLines == 0
    nums += 2
end
