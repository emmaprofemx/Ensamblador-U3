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

.code


	mainp11 PROC
	
		;Lógica del Programa
	    mov edx , offset nombre
		mov ecx , sizeof nombre

		call readstring ; " PEDRO " + null (0)

		call writestring

	    

		exit

	mainp11 ENDP
	
	END mainp11