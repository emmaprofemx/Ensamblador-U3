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
contador dword 0d

.code
	mainej17 PROC
	
		;Lógica del Programa	 
		
		;"El naufrago satisfecho 2.0" ofrece hamburguesas sencillas (S) , dobles (D)
		; y triples (T) , las cuales tienen un costo de $20 , $25 , y $30 respectivamente.
		;La empresa acepta tarjetas de credito con un cargo de 10% sobre la compra.
		;Suponiendo que los clientes adquieren N hamburguesas , las cuales pueden ser de 
		;diferente tipo , ¿Cuánto deben pagar por un pedido?
	
		;println "Cuantas vueltas?"
		;call readint ; LEEMOS EN EAX
		;mov ecx , eax
		;mov ebx , 0

		mov ecx , 5
		mov ebx , 0


		ciclo:
			;println "Ingresa una letra"
			call readchar ; eax
			cmp al , 't'
			jne noSumar

			inc ebx
			call writechar
			call crlf
			noSumar:
			loop ciclo

			mov eax, ebx ;Mover el valor del contador a EAX
			call writedec ;Mostrar el número de veces que se ingresó 't'
			call crlf ;Salto de línea
		

	
		exit

	mainej17 ENDP
	
	END mainej17

