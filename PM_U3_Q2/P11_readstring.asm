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

.code


	mainp11 PROC
	
		;L�gica del Programa
	    mov edx , offset nombre
		mov ecx , sizeof nombre

		call readstring ; " PEDRO " + null (0)

		call writestring

	    

		exit

	mainp11 ENDP
	
	END mainp11