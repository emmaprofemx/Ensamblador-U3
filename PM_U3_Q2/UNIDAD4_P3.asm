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

vector dword 10,20,30,40,50

.code

	main203 PROC
	
		;L�gica del Programa
		;MUESTRA TODOS LOS DATOS DEL VECTOR
		mov ecx, 5
		mov esi,0

	ciclo:
	
	  mov eax, vector[esi]
	  
	call writeDec
	call crlf 
	add esi , 4
	loop ciclo

		exit	
	
	main203 ENDP
	
	END main203
