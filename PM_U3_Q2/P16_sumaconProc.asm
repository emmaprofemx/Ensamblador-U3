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
INCLUDE macros.inc
.data
; �rea de Declaraci�n de Variables
	 titulo db "Advertencia",0
	 contenido db  "Deseas visulaizar el resultado de la suma", 0
		
.code


	mainp16 PROC
	
		;L�gica del Programa
		  
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

