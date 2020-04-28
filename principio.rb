require '../controlador/controlador.rb'
$lista_colegios=Array.new()
$lista_tutor=Array.new()
$lista_evaluacion=Array.new()

$ct = Controlador.new()

def menu_principal()
		begin
		system('cls')
		puts"--------------------------------Registrar Datos del participante--------------------------------"
		puts"1. Registrar Colegio Nacional"
		puts"2. Registrar Colegio Particular"
		puts"3. Registrar Tutor del Estudiante"
		puts"4. Realizar Evaluación"
		puts"5. ***"
		puts"6. ***"
		puts"7. Salir"
		puts
		puts"Seleccione una opcion:"
		opcion = gets.chomp.to_i
	end until(opcion >=1 and opcion<=7)
	case opcion
		when 1
			registro_colegioNacional()
		when 2
			registro_colegioParticular()
		when 3
			registro_Tutor()
		when 4
			realizarEvaluacion()
		when 5
			pppp()
		when 6
			ppp()
	end
end
def registro_colegioNacional()
	system('cls')
	puts"----------------------Registro de Colegio Nacional-----------------------------"
	puts
	puts "Ingrese DNI del estudiante: "
	dni = gets.chomp.to_i
	puts "Ingrese Apellido del estudiante: "
	apellido = gets.chomp
	puts "Ingrese Nombre del estudiante: "
	nombre = gets.chomp
	puts "Ingrese edad del estudiante: "
	edad = gets.chomp.to_i
	puts "Ingrese genero del estudiante: "
	genero = gets.chomp
	puts "Ingrese zona del estudiante, Rural o Urbano: "
	zona = gets.chomp
	puts "Ingrese promedio del 2do año del estudiante: "
	genero = gets.chomp

	#codigo = $ct.generarCodigo($lista_disco.size)
	obj = $ct.crearCnacional(dni,apellido,nombre,edad,genero,zona,promedio)
	$lista_colegios.push(obj)
	menu_principal()
end

def registro_colegioParticular()
	system('cls')
	puts"----------------------Registro de Colegio Particular-----------------------------"
	puts
	puts "Ingrese DNI del estudiante: "
	dni = gets.chomp.to_i
	puts "Ingrese Apellido del estudiante: "
	apellido = gets.chomp
	puts "Ingrese Nombre del estudiante: "
	nombre = gets.chomp
	puts "Ingrese edad del estudiante: "
	edad = gets.chomp.to_i
	puts "Ingrese genero del estudiante: "
	genero = gets.chomp
	puts "Ingrese monto de la pensión: "
	monto = gets.chomp.to_i
	puts "Ingrese puesto en que finalizo en el 2do grado, por ejemplo 2°puesto : "
	puesto = gets.chomp

	#codigo = $ct.generarCodigo($lista_disco.size)
	obj = $ct.crearCparticular(dni,apellido,nombre,edad,genero,monto,puesto)
	$lista_colegios.push(obj)
	menu_principal()
end
def registro_Tutor()
	system('cls')
	puts"----------------------Registro del tutor del estudiante-----------------------------"
	puts
	puts "Ingrese DNI del Tutor: "
	dni = gets.chomp.to_i
	puts "Ingrese Apellido del Tutor: "
	apellido = gets.chomp
	puts "Ingrese Nombre del Tutor: "
	nombre = gets.chomp
	puts "Ingrese parentesco con el estudiante: "
	parentesco = gets.chomp

	obj = $ct.crearTutor(dni,apellido,nombre,parentesco)
	$lista_tutor.push(obj)
	menu_principal()
end

menu_principal()







=begin
def lista()
	puts "-------------------------------Lista de vehiculos----------------------------------------"
	$lista_colegios.each do |item|
		print "#{item.puntaje_final()}".ljust(10)
		print "#{item.calificacionSocioconomica()}".ljust(10)
		print "#{item.puntaje_rendimiento()}".ljust(10)
		print "#{item.dni}".ljust(10)
		print "#{item.nombre}".ljust(10)
		print "#{item.apellido}".ljust(12)
		print "#{item.edad}".ljust(12)
		print "#{item.genero}".ljust(12)
		puts""
	end
	#dni,apellido,nombre,edad,genero,zona,promedio
	#dni,apellido,nombre,edad,genero,monto,puesto
end
obj = $ct.crearCnacional("123","Blano","Audi",15,"Femenino","Rural",18)
$lista_colegios.push(obj)
obj = $ct.crearCparticular("124","Dueñas","KIA",14,"Masculino",400,"5°puesto")
$lista_colegios.push(obj)
obj = $ct.crearCnacional("125","Honda","Suzuki",13,"Femenino","Urbano",14)
$lista_colegios.push(obj)


lista()
=end
