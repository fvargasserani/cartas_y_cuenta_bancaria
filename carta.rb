class Carta 
    attr_accessor :numero, :pinta
    def initialize(numero = Random.rand(1..13), pinta = ['C', 'D', 'E', 'T'].sample)
        @numero = numero
        @pinta = pinta
    end

    def five_cards(numero,pinta)
        [[@numero,@pinta],[@numero,@pinta],[@numero,@pinta],[@numero,@pinta],[@numero,@pinta]]
    end
end

a = Carta.new
print a.five_cards(1,'T')