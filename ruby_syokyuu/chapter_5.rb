#5-1-1
p ['コーヒー', 'カフェラテ'].size

#5-1-2
p [1,2,3,4,5].sum

#5-2-3
p ['モカ', 'カフェラテ', 'モカ'].uniq

#5-2-4
p [1, 2].clear

#5-3共通
a = ['カフェラテ', 'モカ', 'カプチーノ']

#5-3-5(自力では失敗)
p a.sample

#5-4-7
p [100, 50, 300].sort

#5-4-8
p [100, 50, 300].reverse

#5-4-9
p "cba".reverse

#5-5-10(Not 自力)
p ["100", "50", "300"].join(',')

#5-4-11
p "100,50,300".split(',')

#5-5-12
p ([1,2,3].map do |number|
  number * 3
end)

#5-5-13
p (["abc", "xyz"].map do |string|
  string.reverse
end
)

#5-5-14
result = ["aya", "achi", "Tama"].map do |name|
  name.downcase
end
p result.sort