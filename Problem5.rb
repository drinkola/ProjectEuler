class Problem5

	def Factors1to20(number)
		for i in (1..20)
			if (number % i) != 0
				return false
			end
		end
		return true
	end

	def TheAnswer()
		start = 20
		while (Factors1to20(start) == false) do
			start = start + 20
		end
		return start
	end
end

problem = Problem5.new
puts "The Answer is: " + problem.TheAnswer.to_s