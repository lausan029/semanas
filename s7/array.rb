products = ['p1','p2','p3']
prices = [1000,5000,45454]

search = gets.chomp
products.index(search)
puts prices[products.index(search)]