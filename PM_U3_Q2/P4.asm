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

	mainp4 PROC
	
		;L�gica del Programa
	    
		mov ecx, 10 ; SE VA A REPETIIR 10 VECES
		
		ciclo:
		 mov eax, 40 ; NUMERO EN EL CUAL SE HARA ALEATORIAMENTE
		 call randomrange ; ENTRE 0 - 39
		 call writedec
		 call crlf
		 loop ciclo ; SE VA A REPETIIR 10 VECES


		

		exit

		
		

	mainp4 ENDP
	
	END mainp4