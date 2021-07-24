# Add the following methods to this burrito class and
# call the methods below the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito

  attr_reader :protein, :base, :toppings

  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(new_topping)
    @toppings << new_topping
  end

  def remove_topping
    @toppings.delete_at(0)  #You can delete any element with index number
  end

  def change_protein
    @protein = "steak"
  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings
dinner.add_topping("cilantro")
p dinner.toppings
dinner.remove_topping
p dinner.toppings
dinner.change_protein
p dinner.protein
