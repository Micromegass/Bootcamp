

#begin
#Construir una aplicación que permita registrar los ingreso y gastos
#de una persona, debe existir suficiente dinero para poder hacer el gasto,
#se debe poder ver el total de ingresos y gastos para mes particular.

require "date"
require_relative "./interface"
class Ingresos

  def initialize
  @movimientos = []

  end

  def registrar_ingresos(cantidad, fecha, descripcion)
    array_fecha = fecha.split("-").map {|i| i.to_i}
    fecha_formateada = Date.new(array_fecha[0], array_fecha[1], array_fecha[2])
    @movimientos << {tipo: "ingreso", cantidad: cantidad, fecha: fecha_formateada, descripcion: descripcion }
  end

  def registrar_egresos(cantidad, fecha, descripcion)
    array_fecha = fecha.split("-").map {|i| i.to_i}
    fecha_formateada = Date.new(array_fecha[0], array_fecha[1], array_fecha[2])
    @movimientos << {tipo: "egreso", cantidad: cantidad, fecha: fecha_formateada, descripcion: descripcion }
  end


  def ver_mes(mes)

  end

end

ing = Ingresos.new
puts ing.registrar_ingresos(2000, "2012-04-12", "beer")
eg = Ingresos.new
puts eg.registrar_egresos(1000, "2012-05-12","arriendo")
