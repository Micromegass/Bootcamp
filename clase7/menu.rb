require "./0Restaurant"

def call_menu

puts "Goodday, what do you want to do: ?"
puts system "clear"
puts "--menu"
puts "------1 Place an order"
puts "------2 Pay an order"
num = gets.chomp



case
when 1 then place_order
when 2 then pay_order

end

end
