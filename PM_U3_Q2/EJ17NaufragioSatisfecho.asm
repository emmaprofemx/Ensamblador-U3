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
contadorT dword 0d
contadorS dword 0d
contadorD dword 0d
.code
	mainej17 PROC
	
		;Lógica del Programa	 
		
		;"El naufrago satisfecho 2.0" ofrece hamburguesas sencillas (S) , dobles (D)
		; y triples (T) , las cuales tienen un costo de $20 , $25 , y $30 respectivamente.
		;La empresa acepta tarjetas de credito con un cargo de 10% sobre la compra.
		;Suponiendo que los clientes adquieren N hamburguesas , las cuales pueden ser de 
		;diferente tipo , ¿Cuánto deben pagar por un pedido?
	
		println "Cuantas vueltas?"
		call readint ; LEEMOS EN EAX
		mov ecx , eax
		;mov ebx , 0

		;mov ecx , 5 ;Cambiar por el número de entradas a leer
		;mov ebx , 0

		ciclo:
			;Leer un caracter
			call readchar
			cmp al , 'S'
			je contarS
			cmp al , 'T'
			je contarT
			cmp al , 'D'
			je contarD
			jmp noSumar

			contarS:
				inc contadorS 
				call writechar
				call crlf
				jmp finConteo

			contarT:
				inc contadorT 
				call writechar
				call crlf
				jmp finConteo
			
			contarD:
				inc contadorD 
				call writechar
				call crlf
				jmp finConteo

			noSumar:
				jmp finConteo

			finConteo:
				loop ciclo

			mov eax , contadorT
		println "Veces que se ingreso T: "
		call writedec ;Mostrar el número de veces que se ingresó 'T'
		call crlf ;Salto de línea

		mov eax , contadorS 
		println "Veces que se ingreso S: "
		call writedec ;Mostrar el número de veces que se ingresó 'S'
		call crlf ;Salto de línea

		mov eax , contadorD
		println "Veces que se ingreso D: "
		call writedec ;Mostrar el número de veces que se ingresó 'S'
		call crlf ;Salto de línea
		
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

	mainej17 ENDP
	
	END mainej17

