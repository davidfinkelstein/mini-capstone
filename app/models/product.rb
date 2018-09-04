class Product < ApplicationRecord

  def is_discounted?
    if price < 2
      true
    else 
      false
    end
  end

  def tax
    tax = price * 0.09
    tax
  end

  def total
    total = tax + price
    total
  end

end
