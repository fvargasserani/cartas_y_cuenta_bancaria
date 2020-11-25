class Cuenta_bancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = 0..1
    end

    def numero_de_cuenta(numero_de_cuenta, vip)
        if vip == 1 && numero_de_cuenta.digits == 8
            "1-#{numero_de_cuenta}"
        elsif vip == 0 && numero_de_cuenta.digits == 8
            "0-#{numero_de_cuenta}"
        else
            "RangeError"
        end
    end
end

a = Cuenta_bancaria.new('Francisca', 10020292)

puts a.numero_de_cuenta(10020292,1)