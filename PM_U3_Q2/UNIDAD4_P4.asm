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

contenedor dword 0d
vector dword 1,2,3,4,5,6,7,8,9,10,11
.code

	main210 PROC
	;Lógica del Programa
		;MUESTRA TODOS LOS DATOS DEL VECTOR
		mov ecx, 10
		mov esi,0

	ciclo:
	
	  mov eax, vector[esi]
	
	call writeDec
	call crlf 
	inc esi
	loop ciclo

		exit	

	
	main210 ENDP
	
	END main210
