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
	    
		
.code


	mainp15 PROC
	
		;Lógica del Programa
		  
		call msgBoxAsk
println "El boton seleccionado es: "
call writeint;
			
		exit

	mainp15 ENDP
	
	END mainp15

