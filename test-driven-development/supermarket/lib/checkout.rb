class Checkout

  attr_reader :shopping_list

  def initialize(item, price)
    @shopping_list = {item => price}
  end

  def scan_item(item, price)
    @shopping_list[item] = price
  end

  def view_price(item)
    @shopping_list[item]
  end

  def view_scanned_items
    return @shopping_list
  end
end

