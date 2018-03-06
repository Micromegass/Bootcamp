
module Menu
  require_relative "./000module_errors"


  attr_accessor :menu, :menu_hash

    def initialize
    @menu = []
    @menu_hash = {}
    end

      def show_menu

      end

          def load_menu(name_file)
                  if File.file?(name_file)
                  File.readlines(name_file).each do |line|
                  arr = line.strip().split("-")
                  menu_hash = {}
                  (0..arr.length-1).step(2).each do |index|
                    menu_hash[arr[index]] = arr[index+1]
                      end
                    @menu.push(menu_hash)
                      end
                      return @menu
                      end
                  else
                  raise FileNotFoundError.new("The file doesn't exist")
                end

end



  class Test
  include Menu
  end

m1 = Test.new
puts m1.load_menu("000menu.txt")
# p t1.show_menu
