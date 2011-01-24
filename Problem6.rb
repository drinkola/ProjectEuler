class Problem6
  def TheAnswer(value)
	return SumOfSquares(value) - SquareOfSums(value)
  end
  
  def SumOfSquares(value)
	sum = 0
	for i in (1..value)
		sum = sum + i*i
	end
	return sum
  end
  
  def SquareOfSums(value)
	sum = 0
	for i in (1..value)
		sum = sum + i
	end
	return sum * sum
  end
end


problem = Problem6.new
puts "The answer is: " + problem.TheAnswer(100).to_s()
