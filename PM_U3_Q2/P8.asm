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

	mainp8 PROC
	
		;L�gica del Programa
	    
		mov ecx, 10 ; SE VA A REPETIR 10 VECES
		
		ciclo:
		 mov eax, 40 
		 call writedec
		 call crlf
		 loop ciclo 

		exit

	mainp8 ENDP
	
	END mainp8