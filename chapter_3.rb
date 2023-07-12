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