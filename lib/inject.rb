class Array


	def james_ject(memo=nil)
		n = (self.count)-1
		memo = self[0]
		ticker = 0
		n.times do
			ticker += 1
			memo = yield(memo,self[ticker])
		end
		memo		
	end

end

# This also works, buyt is copied from a random github
# 	def james_ject(result=nil)
# 		result ||= self.shift
# 		self.each do |element|
# 				result = yield(result, element)
# 			end
# 		result
# 	end

# end

