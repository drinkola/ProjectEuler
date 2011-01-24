require 'test/unit'
require 'Helper.rb'

class TC_MyTest < Test::Unit::TestCase

	def test_ShouldReturnOneAsPrime()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(1)
		assert(answers.length == 0, 'Length')
	end
	
	def test_ShouldReturnPrimesOf2()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(2)
		assert(answers.length == 1, 'Length')
	end
	
	def test_shouldReturnPrimesOf3()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(3)
		assert(answers.length == 2, 'Length')
	end
	
	def test_shouldReturnPrimesOf4()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(4)
		assert(answers.length == 2, answers.length)
	end
		
	def test_shouldReturnPrimesOf5()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(5)
		assert(answers.length == 3, 'Length')
	end
		
	def test_shouldReturnPrimesOf6()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(6)
		assert(answers.length == 3, 'Length')
	end
		
	def test_shouldReturnPrimesOf7()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(7)
		assert(answers.length == 4, 'Length')
	end
		
	def test_shouldReturnPrimesOf100()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(100)
		assert(answers.length == 25, answers.length)
	end
		
	def test_shouldReturnPrimesOf1000()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(1000)
		assert(answers.length == 168, answers.length)
	end
		
	def test_shouldReturnPrimesOfAMillion()
		helper = Primes.new
		answers = helper.GeneratePrimesToNumber(1000000)
		assert(answers.length == 78498, answers.length)
	end
	
end