p a = ['コーヒー', 'カフェラテ']

#4-2-2
drinks = ['コーヒー', 'カフェラテ', 'モカ']

#4-2-3
p drinks << 'カフェラテ'

#4-2-4
p drinks[0]
p drinks[1]

#4-3-5
p ['コーヒー', 'カフェラテ'].push('モカ')

#4-3-6
p [2, 3].unshift(1)

#4-3-7
p [1, 2] + [3, 4]

#4-4共通
a =  ['ティーラテ', 'カフェラテ', '抹茶ラテ']

#4-4-8
p a

#4-4-9
a.each do |drink|
  puts "#{drink}お願いします"
end

#4-4-10
b = [1, 2, 3]
sum = 0
b.each do |number|
  sum += number
end
puts sum

#4-4-11
