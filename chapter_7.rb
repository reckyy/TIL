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

#7-3-5
