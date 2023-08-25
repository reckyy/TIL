require 'debug'

class Bingo
  def initialize
    @bingo_card = Array.new(6) { Array.new(5, 0) }
		@bingo_card[0] = ["B", "I", "N", "G","O"]
  end

  def make_bingo_number(min, max, array)
		@bingo_number = Random.new
		@bingo_number.rand(min..max)
	  array.include?(@bingo_number) ? make_bingo_number(min, max, array) : @bingo_number
	end

  def insert_bingo_number
		1.upto(5) do |row|
			5.times do |col|
				@bingo_card[row][col] = make_bingo_number((15 * col), (15 * (col + 1)), @bingo_card)  
			end
		end
		@bingo_card
  end

	def generate_card
	  insert_bingo_number
		6.times do |i|
			puts @bingo_card[i].join(` | `)
		end
	end 

end

Bingo.new.generate_card