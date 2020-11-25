class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise RangeError, 'La cuenta debe tener 8 digitos' if numero_de_cuenta.digits.count != 8 
        raise ArgumentError, 'Debe ingresar 0 o 1' if (vip != 0 && vip != 1)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def cuenta_final
        "#{vip}-#{numero_de_cuenta}"
    end
end

a = CuentaBancaria.new('Francisca', 10003222, 1)

puts a.cuenta_final