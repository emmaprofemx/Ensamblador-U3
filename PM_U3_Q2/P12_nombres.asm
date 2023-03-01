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

nombre byte 20 dup ('A')
nombredos byte 20 dup('B')

.code


	mainp12 PROC
	
		;Lógica del Programa


			println "Ingresa el primer nombre del equipo"
			mov edx , offset nombre
			mov ecx , sizeof nombre
			call readstring 
			;call writestring
			
			println "Ingresa el segundo nombre del equipo"
			mov edx , offset nombredos
			mov ecx , sizeof nombredos
			call readstring 
			;call writestring

			println "EL NOMBRE DE LOS INTEGRANTES ES:"
			call writedec


	    

		exit

	mainp12 ENDP
	
	END mainp12