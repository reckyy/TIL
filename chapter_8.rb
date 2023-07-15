#8-1-1
p ({:coffee => 300, :caffe_latte => 400}).class

#以下の例だと、エラーになる。{}をブロックだと見なすため、
#p {:coffee ==> 300, :caffe_latte => 400}.class

#8-1-2
new_hash = Hash.new
puts new_hash

#8-2-3
class CaffeLatte
end
caffe_latte = CaffeLatte.new
p caffe_latte.class

#8-3-4
class Item
  def name
    "チーズケーキ"
  end
end
item = Item.new
p item.name

#8-4-5
class Item2
  def name=(text)
    @name = text
  end

  def name
    @name
  end
end
item2 = Item2.new
item2.name= "チーズケーキ"
p item2.name

#8-5-6
class Item3
  def initialize
    p "商品を扱うオブジェクト"
  end
end
Item3.new

#8-5-7
class Item4
  def initialize(text)
    @name = text
  end
  def name
    @name
  end
end
item4 = Item4.new("マフィン")
item_4 = Item4.new("スコーン")
p item4.name
p item_4.name

