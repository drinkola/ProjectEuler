require 'Helper.rb'

class Problem14
	def LongestCollatz()
		maxValue = 1
		maxCount = 0
		for x in (2..1000000)
			temp = x
			count = 1
			while temp > 1 do
				if (temp % 2 == 0)
					temp = temp / 2
				else
					temp = 3 * temp + 1
				end
				count += 1
			end
			if (count > maxCount)
				maxValue = x
			end
		end
		return maxValue;
	end
end

problem = Problem14.new
puts "The answer is " + problem.LongestCollatz().to_s()