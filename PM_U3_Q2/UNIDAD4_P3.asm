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

vector dword 10,20,30,40,50

.code

	main203 PROC
	
		;Lógica del Programa
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
