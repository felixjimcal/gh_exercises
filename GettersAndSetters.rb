class GettersAndSetters

    def initialize
        @nombre = "Default"
    end

    def getNombre
        @nombre
    end

    def setNombre(name)
        @nombre = name
    end

end

gettandSet = GettersAndSetters.new
puts gettandSet.getNombre
gettandSet.setNombre("Felix")
puts gettandSet.getNombre