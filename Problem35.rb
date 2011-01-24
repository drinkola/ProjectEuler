require 'Helper.rb'

class Problem35
  def HowManyCircularPrimes(upToValue)
    helper = Primes.new
    primes = helper.GeneratePrimesToNumber(upToValue)
    count = 0
    for i in (0..primes.length-1)
      if (IsCircularPrime(primes[i], primes))
        count += 1
      end
    end
    return count
  end
  
  def IsCircularPrime(value, primeArray)
    for i in (1..value.to_s.length)
      if (!primeArray.include?(value.rotate(i)))
        return false
      end
    end
    return true
  end
end

problem = Problem35.new
puts "The Answer is: " + problem.HowManyCircularPrimes(1000000).to_s
