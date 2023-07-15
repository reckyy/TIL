#7-1-1
def order
  puts "カフェラテください。"
end
order

#7-2-2
def area
  3 * 3
end
puts area

#7-2-3
#1以外の場合戻り値がnilになってしまうダメな例
def bad_dice
  dice_number = [1,2,3,4,5,6].sample
  if dice_number == 1
    puts 'もう一回'
    [1,2,3,4,5,6].sample
  end
end
def good_dice
  dice_number = [1,2,3,4,5,6].sample
  return dice_number unless dice_number == 1
  puts 'もう一回'
  dice_number = [1,2,3,4,5,6].sample
end
puts good_dice

#7-3-4
def order2(menu)
  puts "#{menu}ください"
end
order2("モカ")

#7-3-5 -> 7-2-3の中に

#7-4-6(caseメソッドの方がbetterかも)
def price(item)
  if item == "コーヒー"
    puts 300
  elsif item = "カフェラテ"
    puts '400'
  end
end
price("コーヒー")
price("カフェラテ")

#7-4-7
def price(item:, size: "short")
  items = {"コーヒー" => 300, "カフェラテ" => 400}
  sizes = {"short" => 0, "tall" => 50, "venti" => 100}
  items[item] + sizes[size]
end

puts price(item: "コーヒー")
puts price(item: "コーヒー", size: "tall")

#7-5-9
def order2(drink)
  puts "#{drink}をください"
end

drink = "コーヒー"
order2(drink)