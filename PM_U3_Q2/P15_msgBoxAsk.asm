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
	    
		
.code


	mainp15 PROC
	
		;L�gica del Programa
		  
		call msgBoxAsk
println "El boton seleccionado es: "
call writeint;
			
		exit

	mainp15 ENDP
	
	END mainp15

