require "./Human"
require "./Banca"

def CalculatePoints(cards)
    points = 0.0
    cards.each do |item|
        if item == 10 || item == 11 || item == 12
            points += 0.5
        else 
            points += item
        end
    end
    # puts points
    return points
end

def CompareResults(human, banca)
    playerPoints = CalculatePoints(human.GetCards)
    puts "Player Points: " + playerPoints.to_s
    
    bancaPoints  = CalculatePoints(banca.GetCards)
    puts "Banca Points: " + bancaPoints.to_s

    if (playerPoints > 7.5) && (bancaPoints > 7.5) 
        puts "Nobody wins"
    elsif playerPoints == bancaPoints
        puts banca.name + " wins!"
        banca.victorias += 1
    elsif (bancaPoints == 7.5)
        puts banca.name + " wins!"
        banca.victorias += 1
    elsif (playerPoints > 7.5) && (bancaPoints.between?(0.5, 7.5))
        puts banca.name + " wins!"
        banca.victorias += 1
    elsif bancaPoints.between?(0.5, 7.5) && (bancaPoints > playerPoints)
        puts banca.name + " wins!"
        banca.victorias += 1
    elsif playerPoints.between?(0.5, 7.5) && (playerPoints > bancaPoints)
        puts human.name + " wins!"
        human.victorias += 1
    elsif (bancaPoints > 7.5) && (playerPoints.between?(0.5, 7.5))
        puts human.name + " wins!"
        human.victorias += 1
    end

    puts banca.name + " " + banca.victorias.to_s + " " + human.name + " " + human.victorias.to_s

    bancaPoints = 0
    playerPoints = 0
    banca.CleanData()
    human.CleanData()
end

human = Human.new
banca = Banca.new
puts "Juego 7 y medio"

loop do
    puts "Jugamos? y/n"
    keepPlaying = gets.chomp

    if keepPlaying == "n"
        break
    end

    loop do
        puts "Desea carta?  y/n"
        wantCard = gets.chomp

        if wantCard == "n"
            CompareResults(human, banca)
            break
        end

        human.CardPlease()
        puts "Entregada carta a jugador"

        banca.CardPlease()
        puts "Entregada carta a Banca"
    end
end