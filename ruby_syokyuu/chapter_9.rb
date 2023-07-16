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

#9-2-3
module EspressoShot
  Price = 100
end
p EspressoShot::Price

#9-3-4
#ファイル名が123.rbと仮定
#123.rbの中身----------
module WhippedCream
  def self.info
    "トッピング用ホイップクリーム"
  end
end
#----------------------

#別ファイルの中身
#-----------
#require_relative "123"
#p WhippedCream.info

#-----------