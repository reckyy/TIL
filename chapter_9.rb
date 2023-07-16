#9-1-1
module ChocolateChip
  def chocolate_chip
    @name += "チョコレートチップ"
  end
end

#9-1-2
class Drink
  include ChocolateChip
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.chocolate_chip
p drink.name