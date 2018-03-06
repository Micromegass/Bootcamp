

# Clase restaurante
#     Tomar un pedido a partir de la disponibilidad del menu
#     Pagar un pedido


class Menu
  attr_accessor :name

  def load_menu()
     puts menu = File.read("000menu.txt")
     hash.menu = menu.map {|i| i.to_hash}
  end
end


m1 = Menu.new
m1.name = "schnitzel"
puts m1.load_menu
