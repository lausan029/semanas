class Student
	attr_reader :name
 def initialize(name, scores)
 @name = name
 @scores = scores.map(&:to_i)
 end
 def average
 	@scores.inject(&:+) /@scores.size.to_f
 	
 end
end

file = File.open('student.txt', 'r')
contens = file.readlines
file.close

studens = []
contens.each do |i|
	ls = i.split(', ')
	name = ls[0]
	scores = ls[1..ls.size]
	studens << Student.new(name, scores)
end

studens.each do |estu|
	p estu.name
	p estu.average
end


avg = studens.map(&:average)
p avg.inject(&:+) / avg.size