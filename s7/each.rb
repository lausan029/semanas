arr1 = ['Arroz', 'Leche', 'Café']
arr1.each do |item|
 puts "Debo comprar #{item}"
end


a = [1,2,3,4,5,6,7]
b = a.map do |e|
e*2
end

a = [1,2,3,4,5,6,7]
b = a.select{ |x| x % 2 == 0}
# seleccionamos todos los
pares
# => [2,4,6]


b = a.reject{ |x| x % 2 == 0}
# => [1, 3, 5, 7]


 b = a.inject(0) { |sum, x| sum + x }