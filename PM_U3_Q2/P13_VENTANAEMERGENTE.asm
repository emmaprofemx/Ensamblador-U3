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
	    
		titulo db "Esto es un titulo" , 0
		contenido db "Contenido del mensaje" ,0
.code


	mainp13 PROC
	
		;L�gica del Programa
		  

		mov edx , offset contenido
		mov ebx, offset titulo
		call msgBox

		exit

	mainp13 ENDP
	
	END mainp13