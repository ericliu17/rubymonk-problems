class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
	  orders.inject(0) do |total, order|
	  	total += order.keys.inject(0) { |total, item| total += order[item] * @menu[item] }
	  end
  end
end

class Restaurant2
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
  	total = 0
	  orders.each do |order|
	  	order.each do |item, number|
				total += number * @menu[item]
			end
		end
		total
  end
end

test_menu = {:rice => 3, :noodles => 2}
test_order = {:rice => 2, :noodles => 2}

puts Restaurant.new(test_menu).cost(test_order)
#puts Restaurant2.new(test_menu).cost(test_order)
