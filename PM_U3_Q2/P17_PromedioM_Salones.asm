TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc
.data
; Área de Declaración de Variables
sumEdadesSalones_17 dword 0
sumTotalAlumnosSalones_17 dword 0


;CONSTANTES


contanteTar dword 5d
totalV dword 0d
.code

	mainp150 PROC
	
		;Lógica del Programa
		mov ebx , 0 ; PROMEDIO DEL SALON
		println "Cuantos salones tiene la escuela:"
			
			call readint ; eax ; total de salones de la escuela
			
			mov ecx , eax
			ciclo1:
				
			println "Cuantos alumnos tiene el salon:"
			call readint ; cuantos alumnos tiene el salon
			push ecx ; GUARDA EN LA PILA EL VALOR DE LA CANTIDAD DE SALONES
			mov ecx , eax ; CUANTOS ALUMNOS TIENE EL SALON....PARA EL CICLO
			mov edx , ecx ; cuantos alumnos tiene el salonn
			ciclo2:
		
					println "Cual es la edad del alumno:"
					call readint; edad de uno de los alumnos
					add ebx , eax ; acumula la edad con el restro de las edades del salon
			loop ciclo2

				; suma de las edades del salon...
				; se necesita que eax , tenga a la suma ... ahororita en ebx
				; se necesita que edx , este en 0
				; en un registro o variable tener la cantidad en el salon

				mov eax,ebx ; se coloca en ebx , la suma de las edades acumuladas
				mov ebx,edx ; en ebx se coloca el total de alumnos que tiene el salon....
				mov edx ,0 ; en edx se coloca el cero para poder dividir

				;para el acumulado de los datos de la escuela (todos los salones)
				add sumEdadesSalones_17 , eax
				add sumTotalAlumnosSalones_17 , ebx

				div ebx ; eax / ebx => sumaAcumulada/totalAlumnosSalon

			println "El promedio de edades del salon es:"

			call writedec
			call crlf
			mov ebx , 0 ; REINICIA EL CONTADOR DE LA SUMA DE LAS EDADES

			pop ecx
			
			
			loop ciclo1
			
			mov edx , 0
			mov ebx , sumTotalAlumnosSalones_17
			mov eax , sumEdadesSalones_17

			div ebx
		
		println "El promedio de edad de la escuela es: "
		call writedec
		call crlf
	
	mainp150 ENDP
	exit
	END mainp150