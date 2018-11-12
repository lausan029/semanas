# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
t = Tag.create(name: 'Accion')

10.times do |i|
	m = Movie.new(name: "Pelicula #{i + 1}")
	m.tags << t
	m.save
end