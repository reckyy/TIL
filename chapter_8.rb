#8-1-1
p ({:coffee => 300, :caffe_latte => 400}).class

#以下の例だと、エラーになる。{}をブロックだと見なすため、
#p {:coffee ==> 300, :caffe_latte => 400}.class

#8-1-2
new_hash = Hash.new
puts new_hash

