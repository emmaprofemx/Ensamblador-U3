TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE macros.inc
.data
; �rea de Declaraci�n de Variables

nombre byte 20 dup ('A')
nombredos byte 20 dup('B')

.code


	mainp12 PROC
	
		;L�gica del Programa


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