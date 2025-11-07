class Product < ApplicationRecord
# • Create a model method called `is_discounted?` that returns true if an item is less than or equal to $10 and false otherwise.
def is_discounted
  if price <= 10
    true
  else 
    false
  end
end

# • Create a model method called `tax` which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)

def product_tax 
  tax = price * 0.009
  tax
end

# • Create a model method called `total` which will return the sum of the price + tax.

def product_total
  tax = price * 0.009
  total = price + tax
  total
end

# • Modify the products view template (JBuilder) to display these model methods.
def friendly_created_at
    created_at.strftime("%A, %b %d")
end
end
