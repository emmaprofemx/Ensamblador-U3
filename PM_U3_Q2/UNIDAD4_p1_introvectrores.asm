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

	main2001 PROC
	
		;Lógica del Programa

		mov esi,0
		mov eax, vector[esi]
		call writedec
		
		exit	
	
	main2001 ENDP
	
	END main2001
