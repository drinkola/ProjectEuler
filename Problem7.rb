require 'Helper.rb'

class Problem7
  def TheAnswer(nthPrime)
		helper = Primes.new
		primes = helper.GeneratePrimesToNumber(1000000)
		return primes[nthPrime-1]
  end
end


stuff = Problem7.new
puts "The answer is: " + stuff.TheAnswer(10001).to_s()
