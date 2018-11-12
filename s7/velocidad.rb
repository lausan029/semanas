require 'benchmark'

str = Benchmark.measure do
	30_000_000.times do
 		 'prueba'
	end
end.total

sym = Benchmark.measure do
	30_000_000.times do
		:prueba
	end
end.total

puts 'String: ' + str.to_s
puts 'Symbol: ' + sym.to_s