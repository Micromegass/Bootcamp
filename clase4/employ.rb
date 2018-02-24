class Employee
  def salary
    puts "Calculando salario"
end
end

class Manager < Employee
def salary
  puts "Calculando bonos"
  super # esta línea llama el método salary de Employee
end
end


m1 = Manager.new
m1.salary
