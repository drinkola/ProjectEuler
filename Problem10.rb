require 'Helper.rb'

class Problem10
  def SumOfPrimesBelow(value)
		helper = Primes.new
		primes = helper.GeneratePrimesToNumber(value - 1)
		return primes.sum
  end
end


stuff = Problem10.new
puts "The answer is: " + stuff.SumOfPrimesBelow(2000000).to_s()
