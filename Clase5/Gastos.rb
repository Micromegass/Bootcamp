

#begin
#Construir una aplicación que permita registrar los ingreso y gastos
#de una persona, debe existir suficiente dinero para poder hacer el gasto,
#se debe poder ver el total de ingresos y gastos para mes particular.
# hace un metodo que permita mostrar el totl de los gastos y el porcentaje por categoria

require "date"
class Ingresos

  def initialize
  @movimientos = []
  @categorias = []
  @total_ingresos = 0
  end

  def registrar_ingresos(cantidad, fecha, descripcion, categoria)
    array_fecha = fecha.split("-").map {|i| i.to_i}
    fecha_formateada = Date.new(array_fecha[0], array_fecha[1], array_fecha[2])
    @movimientos << {tipo: "ingreso", cantidad: cantidad, fecha: fecha_formateada, descripcion: descripcion}
    @total_ingresos += cantidad
  end

  def registrar_egresos(cantidad, fecha, descripcion, categoria)
    array_fecha = fecha.split("-").map {|i| i.to_i}
    fecha_formateada = Date.new(array_fecha[0], array_fecha[1], array_fecha[2])

    if @categorias.include?(categoria) && @total_ingresos >= cantidad
      @movimientos << {tipo: "egreso", cantidad: cantidad, fecha: fecha_formateada, descripcion: descripcion, categoria: categoria}
    end
  end


  def ver_mes
  return @movimientos.select{|x| x[:fecha] = "06"}
  end

  def ver_mes_total
    total_ingresos = 0
    @movimientos.each do |x|
    x[:cantidad]
    x = x+1
    end

    total_egresos = 0
    if [:tipo] = egreso
    @movimientos.each do |y|
    y[:cantidad]
    y = x+1
    end
    end

  end

  def agregar_categoria(categoria)
    @categorias << categoria
  end



end

ing = Ingresos.new
puts ing.registrar_ingresos(2000, "2012-06-12", "beer", "living")
puts ing.registrar_ingresos(3000, "2012-06-08", "beer", "living")
eg = Ingresos.new
puts eg.registrar_egresos(1000, "2012-05-12","arriendo", "services")
puts ing.ver_mes
puts ing.ver_mes_total
