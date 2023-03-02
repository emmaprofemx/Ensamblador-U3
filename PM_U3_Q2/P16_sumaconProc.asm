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
INCLUDE macros.inc
.data
; Área de Declaración de Variables
	 titulo db "Advertencia",0
	 contenido db  "Deseas visulaizar el resultado de la suma", 0
		
.code


	mainp16 PROC
	
		;Lógica del Programa
		  
		println "Ingresa el valor de A : "
		call readint ; lo guarda en Eax
		println "Ingresa el valor de B :"

		mov ecx, eax

		call readint ; eax

		; a = ecx  b = eax

		mov edx, offset contenido
        mov ebx, offset titulo
			
		add ecx, eax ; ecx
		call msgBoxAsk ; eax
		; +6 = SI  +7 = NO
		exit

	mainp16 ENDP
	
	END mainp16

