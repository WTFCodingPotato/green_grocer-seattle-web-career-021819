def consolidate_cart(cart)
  new_list = {}
  cart.each do |element|
    element.each do |item, attributes|
      if new_list.has_key?(item)
        new_list[:count] += 1
      else
        new_list[item] = attributes.merge({:count => 1})

      end
    end
  end
  new_list
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
