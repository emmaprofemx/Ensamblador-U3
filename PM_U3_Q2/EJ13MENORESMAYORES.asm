TITLE NombrePrograma

;DESCRIPCIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc
.data
; Área de Declaración de Variables
	

;CONSTANTES

cantidad dword 0d
menores dword 0d
mayores dword 0d
.code
	mainej13 PROC
	
		;Lógica del Programa	
		println "Ingrese las cantidades: "
		call readint ; LEEMOS EN EAX
		mov	cantidad , eax
		mov ecx , cantidad ; CANTIDAD DE VUELTAS QUE REALIZARA EL CICLO
		
		ciclo:
			println "Ingresa el numero: "
			call readint ; LEEMOS UN VALOR
			cmp eax , 0
			
			jle menoroigualacero
			jge mayoresacero

			mayoresacero:
			inc mayores

			menoroigualacero:
			inc menores
			

		loop ciclo
		;Movemos la cantidad de mayores y lo almacenamos en eax
		mov eax , mayores
		println "Mayores:"
		call writedec
		call crlf


		; Resta cantidad - mayores y muestra el resultado en pantalla
		mov eax, cantidad    ; Movemos el valor de cantidad a eax
		sub eax, mayores     ; Restamos el valor de mayores a eax
		println "Menores "
		call writedec      ; Imprimimos el resultado en pantalla

		exit



	mainej13 ENDP
	
	END mainej13
