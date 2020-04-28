
class Tutor
	attr_accessor :dni, :apellido, :nombre, :parentesco
	def initialize(dni,apellido,nombre,parentesco)
		@dni=dni
		@apellido=apellido
		@nombre=nombre
		@parentesco=parentesco
	end
end