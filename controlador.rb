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
end
