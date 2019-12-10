letras = ["a","b",3,"4"]
numeros = 1..5 #generate array of numbers automaticaly

puts "for loop"
for i in letras do
    puts i
end

puts "for_each loop"
letras.each do |element|
    puts element
end

puts "print elements"
puts letras[0]
puts letras[-1]

puts "for_each loop of numbers"
numeros.each do |element|
    puts element
end

puts numeros.include? 7
print "Pares: "
print numeros.select(&:even?)
puts ""
print "Impares: "
print numeros.select(&:odd?)
puts ""
print numeros.sum