require 'debug'

class Bingo
  def initialize
    @bingo_card = Array.new(6) { Array.new(5, 0) }
		@bingo_card[0] = ["B", "I", "N", "G","O"]
  end

  def make_bingo_number(min, max, array)
		bingo_number = rand(min..max)
	  array.include?(bingo_number) ? make_bingo_number(min, max, array) : bingo_number
	end

  def insert_bingo_number
    current_rand_number = []
		1.upto(5) do |row|
			5.times do |col|
        new_rand_number = make_bingo_number((15 * col), (15 * (col + 1)), current_rand_number)
				@bingo_card[row][col] = new_rand_number
        current_rand_number << new_rand_number
			end
		end
		@bingo_card
  end

	def generate_card
	  insert_bingo_number
		6.times do |i|
			puts @bingo_card[i].map { |number| number.to_s.rjust(2) }.join(' | ')
		end
	end 

end

Bingo.new.generate_card
