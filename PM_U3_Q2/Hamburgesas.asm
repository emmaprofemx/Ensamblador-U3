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

msj1_ejt1 db "Que tipo de hamburgesa desea?", 0
msj2_ejt2 db "Cuantas hamburgesas va a llevar?", 0
msj3_ejt3 db "El total a pagar es: ", 0

;CONSTANTES
hamburgesa_sencilla dword 20d
hamburgesa_doble dword 25d
hamburgesa_triple dword 30d

contanteTar dword 5d
totalV dword 0d
.code

	mainp101 PROC
	
		;Lógica del Programa

		;******MENSAJE 1******
	    mov edx, offset msj1_ejt1 
		call writestring
		call crlf 
		call readint ; Leemos eax y lo guardamos en ebx

		mov ebx,eax

		;******MENSAJE 2******
	    mov edx, offset msj2_ejt2 
		call writestring
		call crlf 
		call readint ; Leemos eax 

		mov ecx, eax

		cmp ebx,1
		je sencilla

		cmp ebx,2
		je doble

		cmp ebx,3
		je triple


	  sencilla:

	        mul hamburgesa_sencilla
			;call writedec	
		    jmp salir
				
	  doble:

	       mul hamburgesa_doble
		
		   
		   jmp salir
		   
		   
	  triple:

	       mul hamburgesa_triple
		   ;call writedec	
		   jmp salir
	 
	 salir:		   

	;******MENSAJE 3******
	       mov edx, OFFSET msj3_ejt3
			call writestring
			call writedec
	
	
	mainp101 ENDP
	exit
	END mainp101