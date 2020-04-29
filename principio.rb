require '../controlador/controlador.rb'
$lista_colegios = Array.new()
$lista_tutor = Array.new()
$lista_tutor_colegio = Array.new()
$lista_evaluacion = Array.new()

$ct = Controlador.new()

def cabecera_tutor()
	print "DNI".ljust(5)
	print "APELLIDO".ljust(15)
	print "NOMBRE".ljust(15)
	print "PARENTESCO".ljust(15)
	puts
end

def menu_principal()
		begin
		system('cls')
		puts"--------------------------------MENU DE REGISTRO DE DATOS--------------------------------"
		puts"1. Registrar Colegio Nacional"
		puts"2. Registrar Colegio Particular"
		puts"3. Registrar Tutor"
		puts"4. Asignar Alumno a Tutor"
		puts"5. Realizar Evaluación"
		puts"6. Reporte Tutor y Alumno" 
		puts"7. ***"
		puts"8. ***"
		puts"9. Salir"
		puts
		puts"Seleccione una opcion:"
		opcion = gets.chomp.to_i
	end until(opcion >=1 and opcion<=9)

	case opcion
		when 1
			registro_colegioNacional()
		when 2
			registro_colegioParticular()
		when 3
			registro_Tutor()
		when 4
			asignar_alumno_tutor()
		when 5
			realizarEvaluacion()
		when 6
			reporte_tutor_alumno()
	end
end
def registro_colegioNacional()
	system('cls')
	puts"----------------------REGISTRAR ALUMNO DE COLEGIO NACIONAL-----------------------------"
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
	promedio = gets.chomp

	#codigo = $ct.generarCodigo($lista_colegios.size)
	obj = $ct.crearCnacional(dni,apellido,nombre,edad,genero,zona,promedio)
	$lista_colegios.push(obj)
	menu_principal()
end

def registro_colegioParticular()
	system('cls')
	puts"----------------------REGISTRAR ALUMNO DE COLEGIO PARTICULAR-----------------------------"
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

	#codigo = $ct.generarCodigo($lista_colegios.size)
	obj = $ct.crearCparticular(dni,apellido,nombre,edad,genero,monto,puesto)
	$lista_colegios.push(obj)
	menu_principal()
end
def registro_Tutor()
	system('cls')
	puts"-----------------------------REGISTRAR UN TUTOR-----------------------------"
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
def asignar_alumno_tutor()
	system('cls')
	puts"----------------------ASIGNAR ALUMNO A UN TUTOR-----------------------------"
	puts "Ingrese DNI del Alumno"
	dni = gets.chomp.to_i
	objAlum = nil
	$lista_colegios.each do |item|
		if item.dni == dni
			objAlum = item
			break
		end
	end
	if (objAlum == nil)
		puts "El Alumno no existe... presione una tecla para continuar"
		gets
		menu_principal()
		else
		puts 
		puts "Alumno: #{objAlum.dni} - #{objAlum.apellido} - #{objAlum.nombre}"
		puts
		begin
			puts "1. Asignar Tutor"
			puts "2. Salir"
			opcion = gets.chomp.to_i
			if opcion == 1
				if opcion == 1
					$lista_tutor.each do |item|
						if item.instance_of? Tutor
							puts "#{item.dni} #{item.apellido} #{item.nombre}"
						end
					end					
				end
				puts "Seleccione un DNI para asigar. (pulse 0 para terminar de asignar)"
				begin
					dni = gets.chomp.to_i
					objTutor = nil
					$lista_tutor.each do |item|
						if item.dni == dni
							objTutor = item
							break
						end
					end
					if objTutor != nil
						fila = [objAlum.dni,objTutor.dni]
						$lista_tutor_colegio.push(fila)
					end

				end until dni == 0
			end
		end until opcion == 2
		menu_principal()
	end
end

def reporte_tutor_alumno()
	system('cls')
	puts"-----------------------------REPORTE DEL TUTOR Y EL ALUMNO-----------------------------"
	puts
	puts "Ingrese el DNI del Alumno"
	dni = gets.chomp.to_i
	puts
	cabecera_tutor()
	$lista_tutor_colegio.each do |item|
		if dni == item[0]
			$lista_tutor.each do |tutor|
				if item[1] == tutor.dni
					print "#{tutor.dni}".ljust(5)
					print "#{tutor.apellido}".ljust(15)
					print "#{tutor.nombre}".ljust(15)
					print "#{tutor.parentesco}".ljust(15)
					puts
				end
			end
		end
	end
	puts
	puts "Precione una tecla para continuar..."
	gets
	menu_principal()
end

menu_principal()




