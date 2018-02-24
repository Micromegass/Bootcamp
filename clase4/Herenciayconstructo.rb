class Parent
  def initialize
    puts "este es el constructor de Parent "
  end
end

class Child
  def initialize
    super # llama el constructor de Parent
    # acá puede ir más código
  end
end


c1 = Child.new
puts c1
