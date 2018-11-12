edades = { Oscar: 27, Javier: 31, Francisca: 32, Alejandro: 19 }
edades.each { |key, value| puts key }
edades.each { |key, value| puts value }
edades.each { |key, value| puts "#{key} tiene #{value} años" }