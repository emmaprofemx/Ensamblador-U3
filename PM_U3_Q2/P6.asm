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

.data
; Área de Declaración de Variables



var1 dword 100d
.code

	mainp6 PROC
	
		;Lógica del Programa
	    
		mov eax , 10 
		call waitmsg ; DETIENE LA EJECUCION DEL PROBLEMA HASTA QUE PRESIONES OK
		call writeDec

		exit

	mainp6 ENDP
	
	END mainp6