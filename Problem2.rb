class Problem2
  def Fibonacci_Func(stoppingSum)
    answer = 2
    first = 3
    second = 5
    third = 8
    while (third < stoppingSum && first < stoppingSum && second < stoppingSum) do
      answer = answer + third
      first = second + third
      second = first + third
      third = first + second
    end
    return answer
  end
end


stuff = Problem2.new
puts "The answer is: "
puts stuff.Fibonacci_Func(4000000)