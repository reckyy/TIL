#3-1-1
def less?(number)
  if number < 365
    puts "true"
  else
    puts "false"
  end
end
less?(2)

#3-1-2
def equal?(number)
  if number == (1 + 1)
    puts "true"
  else
    puts "false"
  end
end
equal?(2)

#3-2-3
def summer?(season)
  if season != "夏"
    puts "あんまん食べたい"
  end
end
summer?("春")

#3-2-4
season = "夏"
if season == "夏"
  puts "かき氷食べたい"
  puts "麦茶飲みたい"
end

#3-3-5
wallet = 100
if wallet >= 120
  puts "ジュース買おう"
else
  puts "お金じゃ買えない幸せがたくさんあるんだ！"
end

#3-4-6
x = 200
if x <= 0 || x >= 100
  puts "範囲外です"
end

#3-4-7
x = 0
y = -1
z = 1
if x > 0 || y > 0 || z > 0
  puts "正の数です"
end

#3-5-8
season = '春'
case season
when '春'
  puts 'アイスを買っていこう'
else
  puts 'あんまん買っていこう'
end

#3-6-9
#bad
a = ['カフェラテ', 'モカ', 'モカ', 'カフェラテ', 'モカ', 'モカ', 'フラペチーノ']
a.each do |string|
  puts string
end

#good
2.times do
  puts "カフェラテ"
  2.times do
    puts "モカ"
  end
end
puts 'フラペチーノ'