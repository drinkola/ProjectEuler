# How many combinations of 1p, 2p, 5p, 10p, 20p, 50p, 1 pound, and 2 pound make 2 pounds in UK
class Problem31
	def TheAnswer()
		max = 200
		coins = Array.new(8)
		coins[0] = 1
		coins[1] = 2
		coins[2] = 5
		coins[3] = 10
		coins[4] = 20
		coins[5] = 50
		coins[6] = 100
		coins[7] = 200
		for each c in coins
			
		end
		return "unknown"
	end
end

problem = Problem31.new
puts "The Answer Is: " + problem.TheAnswer.to_s