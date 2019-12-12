require "./Player"
class Human < Player

    MyCards = []
    name = ""
    victorias = 0
    derrotas = 0

    def initialize
        @MyCards = []
        @name = "Felix"
        @victorias = 0
        @derrotas = 0
    end

    def CardPlease()
        @MyCards.push(Banca.GiveCard)
    end

    def GetCards()
        @MyCards
    end

    def CleanData()
        @MyCards.clear
    end
end