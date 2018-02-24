# Clase Padre
class Figure
  attr_accessor :stroke, :fill
end

# Hereda de Figure
class Circle < Figure
  attr_accessor :radius
end

# Hereda de Figure
class Square < Figure
  attr_accessor :side
end

# Hereda de Figure
class Triangle < Figure
  attr_accessor :base, :height
end

c1 = Circle.new
c1.fill = "red"


class Circle < Figure
  attr_accessor :radius
end

class Cylinder < Circle
  attr_accessor :length
end
c2 = Cylinder.new
c2.fill = "yellow "
puts c1.fill


class Circle < Figure
  def to_s
    "Este es un círculo con radio #{@radius}"
  end
end
