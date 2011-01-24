require 'Helper.rb'

class Problem9
	def PythagTriple()
		for a in (1..500)
			for b in (1..500)
				c = 1000 - a - b
				if ((a + b + c == 1000) && (c == Math.sqrt(a*a + b*b)))
					return a * b * c
				end
			end
		end
		return 0
	end
end


answer = Problem9.new
puts "The answer is: " + answer.PythagTriple().to_s
