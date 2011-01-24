class Problem4
  def IsPalindrome(number)
    return (number.to_s.reverse == number.to_s)
  end
  
  def TheAnswer()
	leftSide = 500
	rightSide = 500
	answer = 0
	for i in (500..999)
		for j in (500..999)
			mult = i * j;
			if (IsPalindrome(mult) && mult > answer)
				answer = mult
			end
		end
	end
	return answer
  end
end

class Test
  def ShouldBePalindrome(tester)
    if (tester.IsPalindrome(12321))
      puts "ShouldBePalindrome: PASS"
    else
      puts "ShouldBePalindrome: FAIL"
    end
  end
  
  def ShouldNotBePalindrome(tester)
    if (tester.IsPalindrome(12345))
      puts "ShouldNotBePalindrome: FAIL"
    else
      puts "ShouldNotBePalindrome: PASS"
    end
  end
end

problem = Problem4.new
myTests = Test.new
myTests.ShouldBePalindrome(problem)
myTests.ShouldNotBePalindrome(problem)
puts "The Answer Is:" + problem.TheAnswer().to_s
