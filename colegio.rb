class Colegios
	attr_accessor :dni,:apellido,:nombre,:edad,:genero,:zona,:promedio,:monto,:puesto
	def initialize(dni,apellido,nombre,edad,genero)
		@dni=dni
		@apellido=apellido
		@nombre=nombre
		@edad=edad
		@genero=genero
		@cs=0   #Calificación socioeconómica (CS)
		@re=0	#Rendimiento en el 2do grado (RE)
		@ec=0	#Rendimiento en el 2do grado (RE)
	end

	def puntaje_final()
		return (0.2)*@cs+(0.3)*@re+(0.5)*@ec
	end
	def calificacionSocioconomica()
		@cs=0
	end
	def puntaje_rendimiento()
		@re=0
	end
end

class Nacional<Colegios
	def initialize(dni,apellido,nombre,edad,genero,zona,promedio)
		super(dni,apellido,nombre,edad,genero)
		@zona=zona
		@promedio=promedio
	end

	def calificacionSocioconomica()
		if @zona=="Rural"
			@cs= 100
		elsif @zona=="Urbano"
			@cs= 80
		end
	end

	def puntaje_rendimiento()
		if @promedio>=19
			@re=100
		elsif @promedio>=18 and @promedio<19
			@re=80
		elsif @promedio>=16 and @promedio<18
			@re=60
		elsif @promedio>=14 and @promedio<16
			@re=40
		elsif @promedio>=11 and @promedio<14
			@re=20
		else 
			@re=0
		end
	end

	def puntaje_final()
		puntaje_rendimiento()
		calificacionSocioconomica()
		return super()
	end
end
class Particular<Colegios
	def initialize(dni,apellido,nombre,edad,genero,monto,puesto)
		super(dni,apellido,nombre,edad,genero)
		@monto=monto
		@puesto=puesto
	end

	def calificacionSocioconomica()
		if @monto<=200
			@cs= 90
		elsif @monto>200 and @monto<=400
			@cs= 70
		elsif @monto>400 and @monto<=600
			@cs=50
		else 
			@cs=40
		end
	end

	def puntaje_rendimiento()
		if @puesto=="1° puesto" or @puesto=="2°puesto" or @puesto=="3°puesto"
			@re=100
		elsif @puesto=="4° puesto" or @puesto=="5°puesto" 
			@re=80
		elsif @puesto=="6° puesto" or @puesto=="7°puesto" or @puesto=="8°puesto" or @puesto=="9° puesto" or @puesto=="10°puesto" 
			@re=60
		elsif @puesto=="11° puesto" or @puesto=="12°puesto" or @puesto=="13°puesto" or @puesto=="14° puesto" or @puesto=="15°puesto" or @puesto=="16° puesto" or @puesto=="17°puesto" or @puesto=="18°puesto" or @puesto=="19° puesto" or @puesto=="20°puesto"
			@re=40
		else
			@re=0
		end
	end

	def puntaje_final()
		puntaje_rendimiento()
		calificacionSocioconomica()
		return super()
	end
end

