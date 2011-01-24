class Integer
	def sum_digits
		to_s.split("").inject(0) {|sum, n| sum + n.to_i}
	end
	
	def first_x_digits(x)
		to_s[1..x]
	end
end

class String
	def sum_chars
		split("").inject(0) {|sum, n| sum + (n[0] - 64)}
	end
	
	def product_as_ints
		split("").inject(1) {|product, n| product * (n.to_i)}
	end
	
	def sum_digits
		split("").inject(0) {|sum, n| sum + n.to_i}
	end
end

class Array
	def sum
		inject( nil ) { |sum,x| sum ? sum+x : x }
	end
end

class Primes
	def GeneratePrimesToNumber(value)
		sieve = GetSieve(value)
		ComputePrimes(sieve, value)
		return CoalesceSieveArray(sieve)
	end
	
	def ComputePrimes(sieve, value)
		start = 2
		while (start * start <= value)
			current = start * start
			while (current <= value)
				sieve[current - 1] = 0
				current = current + start
			end
			start = start + 1
		end
	end
	
	def GetSieve(value)
		sieve = Array.new
		for i in (1..value)
			sieve << i
		end
		return sieve
	end
	
	def CoalesceSieveArray(sieveArray)
		answers = Array.new
		for x in (2..sieveArray.length)
			if (sieveArray[x-1] != 0)
				answers << sieveArray[x-1]
			end
		end
		return answers
	end
end