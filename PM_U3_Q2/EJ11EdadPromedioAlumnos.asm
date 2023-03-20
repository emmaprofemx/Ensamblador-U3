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
	

;CONSTANTES
sumaEdades dword 0d
alumnos dword 0d
.code
	mainej11 PROC
	
		;Lógica del Programa	
		println "Ingrese la cantidad de alumnos: "
		call readint ; LEEMOS EN EAX
		mov alumnos , eax
		mov ecx , alumnos ; SE VA A REPETIR 5 VECES

		ciclo:
			println "Ingrese la edad del alumno: "
			call readint ; PEDIMOS EL VALOR Y LO ALMACENAMOS EN EAX
			add sumaEdades , eax ;SUMAMOS LAS EDADES INGRESADAS
		loop ciclo
			mov eax , sumaEdades ; MOVEMOS SUMAEDADES A EAX PARA POSTRERIORMENTE MOSTRARLO
			;println "Suma de edades es:" ; IMPRIMIMOS UN MENSAJE
			;call writedec ; DEBE MOSTRAR 110 - SI LO MUESTRA
			mov edx , 0 ; LIMPIEZA DEL REGISTRO

			div alumnos ; SUMAEDADES / ALUMNOS
			call crlf
			println "La edad promedio del grupo de alumnos es: "
			call writedec 

		exit

	mainej11 ENDP
	
	END mainej11

