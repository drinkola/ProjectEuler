# sum of digits of 2^1000 
require 'Helper'

class Problem16
	def TheAnswer()
		(2**1000).sum_digits
	end
end

problem = Problem16.new
puts "The answer is: " + problem.TheAnswer.to_s