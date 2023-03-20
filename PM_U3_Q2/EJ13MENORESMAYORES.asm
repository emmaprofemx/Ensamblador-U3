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
			mov eax , mayores
			println "Mayores a 0: "
			call writedec
			call crlf
			mov eax , 0
			mov eax , menores
			println "Menores a 0:"
			
			call writedec




		exit



	mainej13 ENDP
	
	END mainej13

