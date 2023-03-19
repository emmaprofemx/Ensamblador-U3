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

vector byte 10,20,30,40,50

.code

	main201 PROC
	
		;Lógica del Programa

		mov esi,0
		mov eax,0
		mov al, vector[esi] ; porque si pongo mov eax,0 funciona
		call writedec
		
		exit	
	
	main201 ENDP
	
	END main201
