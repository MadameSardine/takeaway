class Array

	def newinject(accumulator=nil)
		self.each_with_index do |number, index|
			if  index ==0 && accumulator == nil 
				accumulator = number
			else
				accumulator = yield(accumulator, number)
			end
		end
		accumulator
	end

end