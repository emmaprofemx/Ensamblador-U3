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

	mainp8 PROC
	
		;Lógica del Programa
	    
		mov ecx, 10 ; SE VA A REPETIR 10 VECES
		
		ciclo:
		 mov eax, 40 ; ESTE ES EL VALOR A IMPRIMIR 10 VECES
		 call writedec ; IMPRIME EL VALOR A PANTALLA
		 call crlf ; HACE UN SALTO DE LINEA
		 loop ciclo 

		exit

	mainp8 ENDP
	
	END mainp8
