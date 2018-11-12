require 'date'
class Company
	attr_reader :name
	def initialize(name, *payment)
		@name = name
		@payment = payment.map{|date| Date.parse(date)}
	end

	def p_before(date)
		raise ArgumentError.new('is no date') if date.class != Date
		@payment.select{|d| d < date}
	end

	def p_after(date)
		raise ArgumentError.new('is no date') if date.class != Date
		@payment.select{|d| d > date}
	end 
end

file = File.open('prov.txt', 'r')
contens = file.readlines
file.close

c = []
contens.each do |i|
	ls = i.split(' ')
	 c << Company.new(*ls)
end

p c[1].p_before(Date.today)
p c[1].p_after(Date.today)