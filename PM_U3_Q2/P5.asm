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

.data
; �rea de Declaraci�n de Variables



var1 dword 100d
.code

	mainp5 PROC
	
		;L�gica del Programa
	    
		call randomize
		mov ecx, 101
		
		ciclo:
		 mov eax, 10
		 call randomrange
		 call writedec
		 call crlf
		loop ciclo

		exit

	mainp5 ENDP
	
	END mainp5