class Ejemplo1
    attr_reader :numOportunidades, :encontrado

    def initialize
        @numOportunidades=0
        @encontrado=false
        @numAleatorio=rand(1..10)
    end

    def adivina(numero)
        if numero!=@numAleatorio
            @numOportunidades+=1
        else
            @encontrado=true
        end
        return @encontrado
    end
    
end

# Felix example
# class Ejemplo1
#     attr_reader :numOportunidades, :isEncontrado # Only read
#     def initialize
#         @numOportunidades = 0
#         @isEncontrado = false
#         @numAleatorio = rand 1..3
#     end
# 
#     def Adivina()
#         print "Indica un numero 1-3: "
#         number = gets.chomp.to_i
# 
#         @numOportunidades += 1
# 
#         if number == @numAleatorio
#             @isEncontrado = true
#             print "Encontrado despues de "+ @numOportunidades.to_s + " oportunidades"
#         end
#     end
# end
# 
# ejemplo = Ejemplo1.new
# while !ejemplo.isEncontrado
#     ejemplo.Adivina()
# end