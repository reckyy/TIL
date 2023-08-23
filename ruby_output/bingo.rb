class Bingo
  def intialize
		@bingo_card = [[B, I, N, G, O]]
  end

  def make_bingo_number(min, max, array)
		@bingo_number = Rand.new
		@bingo_number.rand(min..max)
	  array.include?(@bingo_number) ? make_bingo_number(min, max, array) : @bingo_number
	end

  def insert_bingo_number
		1.upto(5) do |row|
			5.times do |col|
				@bingo_card[row] << make_bingo_number((15 * col), (15 * (col + 1)), @bingo_card)  
			end
		end
		@bingo_card
  end

	def generate_card
	  insert_bingo_number
		5.times do |i|
			puts @bingo_card[i].join(` | `)
		end
	end 

end

Bingo.new.generate_card
