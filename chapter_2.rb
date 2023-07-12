#2-1-1
puts 2 + 3

#2-1-2
def find_circle
  r = 2
  puts r * r * 3.14
end
find_circle

#2-2-3
puts "Ruby"
puts "abc" + "def"
def change_integer
  a = "123".to_i
  b = "456".to_i
  puts a + b
end
change_integer

#2-3-6
def coffee
  coffee = 300
  esp = 100
  sum = coffee + 2 * 100
  puts "コーヒー : #{coffee}円"
  puts "合計 : #{sum}円"
end
coffee

#2-6-8
total = 300 * 2
p total
tax = total * 0.08
puts tax