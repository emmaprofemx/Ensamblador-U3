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

var_1_2 dword 10d
var_2_2 dword 2d
.code

	main2 PROC
	
		;L�gica del Programa

		mov eax, 4

		call writeint
		
		; imprimir en consola el valor

		; con el que cuenta el registro eax
		
	
		
		exit	
	
	main2 ENDP
	
	END main2
