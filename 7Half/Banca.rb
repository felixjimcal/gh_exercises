require "./Player"
class Banca < Player

    @Cards = [1, 2, 3, 4, 5, 6, 7, 10, 11, 12]
    @@Card = 0

    BancaCards = []
    name = ""
    victorias = 0
    derrotas = 0

    def initialize
        @BancaCards = []
        @name = "Casino Royale"
        @victorias = 0
        @derrotas = 0
    end

    def self.GiveCard()
        @@Card = @Cards.sample
        return @@Card
    end

    def CardPlease()
        @BancaCards.push(Banca.GiveCard)
    end

    def GetCards()
        @BancaCards
    end

    def CleanData()
        @BancaCards.clear
    end
end