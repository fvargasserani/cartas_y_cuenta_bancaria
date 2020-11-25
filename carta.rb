class Carta 
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

a = []
5.times do |i|
    i = Carta.new(Random.rand(1..13), ['C', 'D', 'E', 'T'].sample)
    a << i
end

print a