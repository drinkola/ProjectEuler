# Sum of digits of 100!
require 'Helper'

class Problem20
	def Factorial(number)
		quotient = number
		for i in (1..number-1)
			quotient = quotient * i
		end
		return quotient
	end
	
	def TheAnswer(value)
		Factorial(value).sum_digits
	end

end


problem = Problem20.new
puts "The Answer is: " + problem.TheAnswer(100).to_s