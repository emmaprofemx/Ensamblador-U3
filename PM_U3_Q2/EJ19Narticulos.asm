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

;CONSTANTES

.code
	mainej19 PROC
	
		;Lógica del Programa	 
		
		


		;--------presione una tecla para continuar----------
	  mov eax, 10
	  push eax
	  mov eax , 500 ; milisegundos
	  call delay ; DELAY SIEMPRE DEPENDE DE EAX (siempre se maneja en mls)
	  pop eax 
	  ;call writeDec
	  ;-----------------------------------------------------
		salir:
		exit

	mainej19 ENDP
	
	END mainej19

