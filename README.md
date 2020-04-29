# Proyecto_Final_Poo
Proyecto_Minedu Programa_Informático
Enunciado del Proyecto 
                                              Enunciado
                                              
 El Ministerio de Educación para el próximo año 2021 implementará una nueva política para el ingreso a los colegios de alto rendimiento, se considera evaluar el ingreso en base a 3 factores:
1. Calificación socioeconómica (CS)
2. Rendimiento en el 2do grado (RE)
3. Evaluación de conocimiento (EC)
Por la gran demanda de este concurso es necesario contar con un sistema informático que brinde apoyo en el tema de registro y control del proceso de admisión, razón por la cual solicitan a Ud. Aplicar sus habilidades y conocimientos de ingeniería para desarrollar este aplicativo.
Para el registro de los alumnos considerar: • DNI
• Apellidos • Nombres • Edad
• Género
Si proviene de colegio nacional considerar:
• Colegio pertenece a rural o urbano
• Promedio ponderado del 2 año
Si proviene de colegio particular considerar:
• Monto de la pensión.
• Puesto en el que finalizó el 2do grado
Para todos los alumnos se debe registrar por lo menos un tutor (máximo 2) para quien se considera los siguientes datos:
• DNI
• Apellidos
• Nombre
• Parentesco
El sistema debe permitir configurar e ingresar las respuestas de los exámenes para que la calificación sea de forma automática. Para esto se debe registrar:
• Código de evaluación.
• Cantidad de preguntas, considerar 2 tipos: de 10 y de 20 preguntas.
Reglas de Negocio:
- El puntaje final para el alumno se obtiene de la siguiente manera: 20%(CS) + 30%(RE) + 50%(EC)
- Para obtener la calificación socioeconómica (CS) se considera: o Para alumnos de colegios nacionales:
  Zona Rural o Urbana
o Para alumnos de colegios particulares: Monto de la pensión
<= 200 soles
> 200 y <= 400 > 400 y <= 600 > 600
Puntaje 100 puntos
80 puntos
Puntaje 90 puntos
70 puntos 50 puntos 40 puntos
-Para obtener el puntaje por Rendimiento en el 2do grado (RE) o Para alumnos de colegios nacionales:
  Promedio Ponderado
y<19 y<18 y<16 y<14
Puntaje
  >= 19 >= 18 >= 16 >= 14 >= 11 < 11
100 puntos 80 puntos 60 puntos 40 puntos 20 puntos 0 puntos
            o Para alumnos de colegios particulares: Puesto
Entre los 3 primeros puestos 5to puesto – 4to puesto 10mo puesto – 6to puesto 20vo puesto – 11vo puesto Menos de 20vo puesto
Puntaje 100 puntos
80 puntos 60 puntos 40 puntos 0 puntos
               3/8

4/8
V1.0
- De la configuración de la evaluación: El sistema solicitará ingresar las respuestas correctas a, b, c, d, e para la alternativa correcta. Dependiendo del tipo de evaluación (10 o 20 preguntas)
- Para rendir la evaluación el sistema contará con un simulador: Para todos los alumnos registrados y según la evaluación aplicada generará de manera aleatoria respuestas a las preguntas (a – b - c - d – e). El sistema cotejará estas respuestas aleatorias con las respuestas ingresadas y registrará el total de preguntas respondidas correctamente, la cantidad de preguntas incorrectas y también se debe considerar en la simulación una probabilidad de 0.1 que el alumno deje la pregunta sin responder.
De acuerdo a la cantidad de preguntas (10 o 20) el sistema realizará el cálculo para obtener el puntaje en base 100.
- Para el peso de los puntajes considerar:
o Por cada pregunta contestada correcta se asignará un puntaje dependiendo
del tipo de evaluación. Por ejemplo, si la evaluación consta de 10 preguntas. Cada pregunta correcta tendrá un puntaje de 10 puntos. Por cada pregunta incorrecta el sistema restará la mitad del puntaje, en el caso del tipo de evaluación de 10 preguntas se descontará 5 puntos. Y si el alumno no contestó una pregunta no se suma ni se resta puntaje.
- El sistema debe permitir ingresar la cantidad de vacantes. De esta configuración dependerá el estado del alumno: Si INGRESA o NO INGRESA, ordenados por el puntaje final que considera los 3 factores.
Reportes solicitados:
• Con el DNI del estudiante se imprimirá todos los datos del estudiante. Si la
evaluación ya fue ejecutada debe mostrar el resultado detallado de todas las
preguntas, su puntaje final y su estado: INGRESA o NO INGRESA.
• También es muy importante consultar según el DNI del alumno el o los tutores.
• Listar el resultado de la evaluación:
o Todos los alumnos ordenados por puntaje final y estado. o Todos los alumnos ingresantes.
o Todos los alumnos no ingresantes.
• Como parte estadística es importante mostrar:
o Cantidad de alumnos postulantes masculinos y femeninos.
o Ingresantes masculinos y femeninos
o No ingresantes masculinos y femeninos
o Ingresantes porcentaje de colegios nacionales y particulares.
o No ingresantes porcentaje de colegios nacionales y particulares.
o La edad de los estudiantes se encuentra entre 11 – 15 años, mostrar
reporte cantidad de ingresantes y no ingresante por edades.
