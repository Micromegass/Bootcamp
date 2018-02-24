#Construir una aplicación (usando POO)
#que permita llamar, colgar y mostrar el historial de llamadas
#con la duración de cada una, no se puede llamar si ya hay una llamada previa,
#ademas debe poder mostrar la llamada actual.


class Llamadas
attr_accessor :duration, :previa, :actual, :numero, :name, :historial

def initialize
  @duration = duration
  @previa = previa
  @actual = actual
  @numero = numero
  @name = name
  @historial = {llamada1: 0.34, llamada2: 1.57, llamada3: 2.00}
end

def llamar
  if @previa == false
    puts "llamando a numero #{@numero}"
  else
    puts "ya llamaste"
  end
end

def colgar
  if @actual == true
  puts "colgando a numero #{@numero}"
  else
  puts "tienes que llamar primero para colgar"
  end
end


def ahora
  if @actual == true
    puts "la llamada actual es la llamada a '#{@name}' con el numero '#{@numero}'"
  end
end


def mostrar
puts  @historial [:llamada1]
puts  @historial [:llamada2]
puts  @historial [:llamada3]

end
end

llamada1 = Llamadas.new
llamada1.name = "El Patron"
llamada1.duration = 0.34
llamada1.previa = false
llamada1.actual = true
llamada1.numero = "01234556"


llamada2 = Llamadas.new
llamada2.name = "Hijo de Puta"
llamada2.duration = 1.57
llamada2.previa = false
llamada2.actual = false
llamada2.numero = "02094858585"

llamada3 = Llamadas.new
llamada3.name = "Amor"
llamada3.duration = 2.00
llamada3.previa = true
llamada3.actual = false
llamada3.numero = "04587484393"



puts llamada1.ahora
puts llamada1.mostrar
puts llamada2.llamar
puts llamada2.colgar
