#6-1-1
menu1 = {coffee: 300, caffe_latte: 400}
p menu1[:coffee]

#6-1-2
menu2 = {"モカ" => "チョコ", "カフェラテ" => "ミルク入り"}
p menu2["モカ"]

#6-2-3
menu1[:tea] = 300
p menu1

#6-2-4
menu1.delete(:coffee)
p menu1

#6-2-5(unlessメソッドを使えば一行で済んだので、そちらの方がベター)
if menu1[:coffee]
  puts "何で？"
else
  puts puts "紅茶はありませんか？"
end

#6-2-6
p "カフェラテください" unless menu1[:caffe_latte] > 500

#6-2-7


#6-3-8
menu1.each do |key, value|
  puts "#{key} - #{value}"
end

#6-3-9
menu1.each do |key, value|
  puts "#{key} - #{value}" if value > 350
end

#6-3-11
array = []
menu1.each do |key, value|
  array << "#{key}"
end
p array