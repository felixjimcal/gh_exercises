require "./Ejemplo1"

ejemplo = Ejemplo1.new
while !ejemplo.encontrado
    number = gets.chomp
    ejemplo.adivina(number.to_i)
end