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
		
		
		add ecx, eax ; ecx , la SUMA DE EAX a + b
		call msgBoxAsk ; eax
		; +6 = SI  +7 = NO INDEPENDIENTEMENTE DE LA RESPUESTA AMBOS SE GUARDAN EN EAX

		;OBTENER EL RESULTADO SI SE OPRINE EL SI
		;(respuesta del usuario) , respSi
		cmp eax , 6
		jnz salir ;SALTO SI NO ES IGUAL
		mov eax , ecx
		call writeDec ; IMPRIME SIN SIGNO

		

		SALIR:
		exit

	mainp16 ENDP
	
	END mainp16

