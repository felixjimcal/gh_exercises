class Jugador
    LIGA = ""
def initialize
    puts "New class"
    @name = "AAAA"
end

    def Saludar(nombre = "Default")
        @name = nombre
        puts "Hola  #{@name}"
        return QuienSoy()
    end 

    private def QuienSoy
        "Paco"
    end
end

# Instance
j = Jugador.new

nombre = j.Saludar
puts nombre

#Uso de metodo