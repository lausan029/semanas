class Product
	attr_reader :red
 def initialize(name, blue, green, red)
 @name = name
 @blue = blue.to_i
 @green = green.to_i
 @red = red.to_i
 end

 def stock_total
 	@blue + @green + @red
 end

 def self.load_data
 	file = File.open('prod.txt', 'r')
	contens = file.readlines
	file.close
	products = []
		contens.each do |i|
		name,  blue, green, red = i.split(", ")
		products << Product.new(name,  blue, green, red)
		end
	products
 end
end

products = Product.load_data




products.each do |pro|
	p pro.red
end

total_red = products.inject(0) {|x,y| x + y.red }
p total_red

total = products.inject(0) {|x,y| x + y.stock_total }
p total