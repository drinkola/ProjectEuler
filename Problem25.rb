#What is the first number in Fibonacci to have 1000 digits?
class Problem25
	def TheAnswer()
		last = 0
		current = 1
		count = 1
		while (CountDigits(current) < 1000) do
			temp = current
			current += last
			last = temp
			count += 1
		end
		return count
	end
	
	def CountDigits(value)
		len = 0
		while (value > 0) do
			len += 1
			value = value / 10
		end
		return len
	end
end

problem = Problem25.new
puts "The answer is: " + problem.TheAnswer().to_s