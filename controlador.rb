require '../modelo/colegio.rb'
require '../modelo/tutor.rb'

class Controlador 
	def crearCnacional(dni,apellido,nombre,edad,genero,zona,promedio)
		obj = Nacional.new(dni,apellido,nombre,edad,genero,zona,promedio)
		return obj
	end
	def crearCparticular(dni,apellido,nombre,edad,genero,monto,puesto)
		obj = Particular.new(dni,apellido,nombre,edad,genero,monto,puesto)
		return obj
	end
	def crearTutor(dni,apellido,nombre,parentesco)
		obj = Tutor.new(dni,apellido,nombre,parentesco)
		return obj
	end
	def generarCodigo(n)
		codigo = "A"
		n = n + 1
		if n < 10
		  	codigo = codigo + "00" + n.to_s
		  elsif n < 100
			codigo = codigo + "0" + n.to_s
			else
			codigo = codigo + n.to_s		  		
		end  
		return codigo
	end
end
