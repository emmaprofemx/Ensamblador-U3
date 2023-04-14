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
cuotaBase dword 0d
edad dword 0d

.code
	mainej7 PROC
	
		;Lógica del Programa	 

		println "Ingresa la edad del conductor: "
		call readint 
		xchg edad , eax
		println "Ingresa el tipo de Poliza (A o B): "
		call crlf	
		call readchar
		cmp al , 'A'
		je tipoA
		cmp al , 'B'
		je tipoB

		tipoA:
			println "ERES TIPO A"
			jmp salir

        tipoB:
		println "ERES TIPO B"
		jmp salir
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

	mainej7 ENDP
	
	END mainej7

