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
	 contenido db  "Desea pagar con tarjeta?", 0

;CONSTANTES
hamburgesa_sencilla dword 20d
hamburgesa_doble dword 25d
hamburgesa_triple dword 30d		
credito dword 5d
select dword 0d

.code


	mainp17 PROC
	
		;Lógica del Programa
		  
		println "Que tipo de hamburgesa desea?"
		call readint ; lo guarda en Eax
		mov ecx, eax
		println "Cuantas hamburgesas va a llevar?"

		call readint ; eax

		; a = ecx  b = eax
		cmp ecx,1
		je sencilla

		cmp ecx,2
		je doble
		
		cmp ecx,3
		je triple
		

		;mul ecx ; eax(f) = eax * ecx
		;call writedec

		sencilla:
			
	        mul hamburgesa_sencilla
			;call writedec	
			mov ecx , eax

			jmp continuar

		doble:
			
	        mul hamburgesa_doble
			;call writedec	
			mov ecx , eax

			jmp continuar

		triple:
			
	        mul hamburgesa_triple
			;call writedec	
			mov ecx , eax	
		
	continuar:
	
	add ecx , credito

	    mov edx, offset contenido
        mov ebx, offset titulo
		call msgBoxAsk ; eax
		; +6 = SI  +7 = NO INDEPENDIENTEMENTE DE LA RESPUESTA AMBOS SE GUARDAN EN EAX
		;OBTENER EL RESULTADO SI SE OPRINE EL SI
		;(respuesta del usuario) , respSi
		cmp eax , 6
		jnz salir ;SALTO SI NO ES IGUAL	
	add ecx , credito	
		;call writedec
		

		salir:
		sub ecx , credito
		mov eax, ecx
		call writedec
		exit

	mainp17 ENDP
	
	END mainp17

