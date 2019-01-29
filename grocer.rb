def consolidate_cart(cart)
  new_list = {}
  cart.each do |element|
    element.each do |item, attributes|
      if new_list.has_key?(item)
        new_list[item][:count] += 1
      else
        new_list[item] = attributes.merge({:count => 1})
      end
    end
  end
  new_list
end

def apply_coupons(cart, coupons)
  new_list = cart
  coupons.each do |coupon_item|
    name = coupon_item[:item]
    if cart[name] && cart[name][:count] >= coupon_item[:num]
      new_list["#{name} W/COUPON"] = {:price => coupon[:cost],
                                      :clearance => cart[name][:clearance],
                                      :count => (cart[name][:count]/coupon[:num])
                                     }
      new_list[name][:count] = cart[name][:count]%coupon[:num]
    end
  end
  new_list
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
