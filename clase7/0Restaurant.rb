# Modulo menu
#     Cargar el menu desde un archivo txt con el formato: codigo, nombre producto, precio, disponible(true/false)
#     Mostrar el menu ( visualmente legible.)
#     Agregar un producto al menu
#     Consultar un producto particular por código.
#
# Modulo ordenes
#     Crear una orden y que se le pueda agregar productos
#     Mostrar el total de la orden.
#     Mostrar todas las ordenes en cola.
#
# Modulo Caja
#     Pagar una orden
#     Mostrar el detalle de las ordenes pagadas
#     Mostrar el total pagado.
#
# Clase restaurante
#     Tomar un pedido a partir de la disponibilidad del menu
#     Pagar un pedido

require "./000module_menu"



class Person
attr_accessor :name

def initialize
  @name = name
end

  def place_order
    puts "what would you like to order? Please enter the code of the meal. We have: "
    puts menu = File.read("000menu.txt")
    @hash_menu = menu.map {|i| i.to_hash}
  end

  def pay_order
  end


end


person = Person.new
person.name = "Axel"
puts person.place_order
