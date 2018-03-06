
module Menu
  attr_accessor :menu

def initialize
  @menu = []
  @menu_hash = {}
end

  def load_menu
   @menu = IO.readlines("000menu.txt")
   @menu.each do |i|
     puts "#{i}"
  end
  @menu[0].split("-")
  @menu_hash[:@menu[0]]
  end
  def show_menu
    # puts @menu
  end

  def add_product
  end

  def consult_product
  end



end

class Test
  attr_accessor :name
  include Menu
end

t1 = Test.new
t1.name = "Axel"
p t1.load_menu
