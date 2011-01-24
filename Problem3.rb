class Problem3
	def AmIPrime(theNumber)
		i = 2
		while (i < theNumber) do
			if (theNumber % i == 0)
				return false
			end
			i = i + 1
		end
		return true
	end
	
	def FindLargestFactorOfPrime(theNumber)
		amIDone = false
		divisor = 1
		candidate = 2
		tempNumber = theNumber
		while (amIDone == false) do
			if (candidate >= tempNumber)
        if (AmIPrime(candidate))
            return candidate
        end
				return divisor
			else
				if (tempNumber % candidate == 0)
					if (AmIPrime(candidate) == true)
						tempNumber = tempNumber / candidate
						divisor = candidate
					end
				else
					candidate = candidate + 1
				end
			end
		end
	end
end

problem = Problem3.new
puts "The Answer Is:"
puts problem.FindLargestFactorOfPrime(6)
puts problem.FindLargestFactorOfPrime(600851475143)