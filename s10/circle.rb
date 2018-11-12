class Circle
	attr_accessor :radius
	def initialize
		@radius = 1
	end
	def bigger
		@radius = radius + 1
	end
	def to_s
		"círculo de radio #{@radius}"
	end
end
c = Circle.new
c.bigger
print c