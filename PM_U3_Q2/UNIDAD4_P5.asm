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

vector byte 1,2,3,4,5
vector2 byte 6,7,8,9,10
vector3 byte 11,12,13,14,15
.code

	main211 PROC
	;L�gica del Programa
	  mov esi,7
	  mov edi,0
	  mov eax,0
	  mov al, vector[esi+edi]
	  call writedec 

		exit	

	
	main211 ENDP
	
	END main211
