require 'date'

#曜日判断メソッド
def judge_day(year, month,day)
  day_of_the_week = Date.new(year, month, day).saturday?
end

entered_day  = Date.new(2023, 8)
last_day = Date.new(entered_day.year, entered_day.month, -1).day
first_day_of_the_week = Date.new(entered_day.year, entered_day.month, 1).cwday

#calendarを表示
week_day_box = Array.new(7)
puts "#{entered_day.month}月 #{entered_day.year}"
puts "日  月  火  水  木  金  土"
if first_day_of_the_week != 7
  first_day_of_the_week.times do 
    print "    "
  end
end
1.upto(last_day) do |day|
  print "#{day}  "
  print " " if day.to_s.length == 1
  puts "" if judge_day(entered_day.year, entered_day.month, day)
end
