#config.ru
require 'rack'
class MiPrimeraWebApp

 def call(env)
 p env
 [200, {}, ['Hola']]

 end
end
run MiPrimeraWebApp.new