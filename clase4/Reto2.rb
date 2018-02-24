#Construir una aplicación (usando POO)
#que permita llamar, colgar y mostrar el historial de llamadas
#con la duración de cada una, no se puede llamar si ya hay una llamada previa,
#ademas debe poder mostrar la llamada actual.


class.Telephone

  def initialize
    @llamada1 = llamada1
    @llamada2 = llamada2
    @llamada3 = llamada3
  end

def llamar
 puts "#{@llamda}"
end

def colgar
end

def historial
end


end

llamada1 = Telephone.new
llamada1.name = "El Patron"
llamada1.duration = 0.34
llamada1.previa = false
llamada1.actual = true
llamada1.numero = "01234556"
