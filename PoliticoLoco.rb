class PoliticoLoco

    def initialize
        @phrases = []
    end

    def TalkShit()
        puts @phrases.sample
    end

    def OtraFraseLoca(frase)
       @phrases.push(frase)
    end

end


politicoLoco = PoliticoLoco.new
politicoLoco.OtraFraseLoca("El socialismo es la solucion")
politicoLoco.OtraFraseLoca("Mas impuestos para el contribuyente")
politicoLoco.OtraFraseLoca("El fin del mundo se acerca")
politicoLoco.TalkShit()