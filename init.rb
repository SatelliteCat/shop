require_relative "cart"
require_relative "item"

=begin
cart = Cart.new
cart.add_item(Item.new)
cart.validate

p cart.items
=end

item1 = Item.new({:price => 10, :weight => 100, :name => "Car"})
item2 = Item.new({:weight => 100, :name => "Car"})
#item.info{|attr| puts attr}

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items

cart.delete_invalid_items

p cart.items