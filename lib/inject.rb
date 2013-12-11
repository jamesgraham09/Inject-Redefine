class Array

	# overall, the structure makes lots of sense
	# but there are issues with the implementation
	def james_ject(memo=nil)
		n = (self.count)-1
		# if memo is given as an argument, it's going to
		# be overwritten on this line. You must take the first element
		# only if the argument isn't given
		memo = self[0]
		# ticker = 0 # I see what you're trying to do with ticker but
		# declaring a block variable would achieve the same
		n.times do |ticker|
			# ticker += 1
			memo = yield(memo,self[ticker+1])
		end
		memo		
	end

end


# This also works, buyt is copied from a random github
# No, this implementation is flawed: it modifies the array on which it's called
# 	def james_ject(result=nil)
# 		result ||= self.shift
# 		self.each do |element|
# 				result = yield(result, element)
# 			end
# 		result
# 	end

# end

