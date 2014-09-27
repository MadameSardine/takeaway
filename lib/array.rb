class Array

	def newinject(argument=0)
		accumulator = argument
		self.each do |number|
			accumulator = accumulator + number
		end
		accumulator
	end

end