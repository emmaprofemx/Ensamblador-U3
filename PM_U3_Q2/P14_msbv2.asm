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
	    
		titulo db "Esto es un titulo" , 0
		contenido db "Primera linea" , 0dh , 0ah  
		db "Segunda linea" , 0
.code


	mainp14 PROC
	
		;Lógica del Programa
		  
		mov edx , offset contenido
		mov ebx, offset titulo
		call msgBox
			
		exit

	mainp14 ENDP
	
	END mainp14