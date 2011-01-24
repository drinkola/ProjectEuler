require 'Helper.rb'

class Problem41
  def FindLargestPandigitalPrime()
		helper = Primes.new
		primes = helper.GeneratePrimesToNumber(987654321)
		for i in (1..primes.length)
			candidate = primes[primes.length - i]
			if (IsPandigital(candidate))
				return candidate
			end
		end
		return primes.sum
  end
  
  def IsPandigital(value)
	digits = value.to_s.split("")
	isPandigital = true
	for i in (1..digits.length)
		pandigital = pandigital && digits.include?(i.to_s)
	end
	return isPandigital
  end
end


stuff = Problem41.new
puts "The answer is: " + stuff.FindLargestPandigitalPrime().to_s()
