require 'Helper'

class Problem22
	def TheAnswer()
		sum = 0
		listOfNames = ReadFile()
		listOfNames = listOfNames.gsub("\"", "")
		arrayOfNames = listOfNames.split(',')
		arrayOfNames = arrayOfNames.sort
		for i in (1..arrayOfNames.length)
#		for i in (1..10)
			sum += arrayOfNames[i-1].sum_chars * i
		end
		return sum
	end
	
	def ReadFile()
		data = ""
		begin
			file = File.open("names.txt", "r")
			file.each_line do |line|
				data += line
			end
			file.close
		rescue => err
			puts "Exception: #{err}"
			err
		end
		return data
	end
end

problem = Problem22.new
puts "The answer is: " + problem.TheAnswer.to_s