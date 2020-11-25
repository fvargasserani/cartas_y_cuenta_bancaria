class Carta 
    attr_accessor :numero, :pinta
    def initialize(numero = Random.rand(1..13), pinta = ['C', 'D', 'E', 'T'].sample)
        @numero = numero
        @pinta = pinta
    end

    def five_cards
        Array.new(5,[@numero,@pinta]).sample
    end
end

a = Carta.new

print a.five_cards