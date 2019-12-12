class AttrAccessor
    attr_accessor :name,:age, :gender # Getter & Setter generator
    def initialize(name = "Default", age = 0, gender = false)
        @name = name
        @age =age
        @gender = gender
    end
end

atr = AttrAccessor.new

puts atr.name
puts atr.age
puts atr.gender

atr.name = "Felix"
atr.age = 12
atr.gender = true

puts atr.name
puts atr.age
puts atr.gender