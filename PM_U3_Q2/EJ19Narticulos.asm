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
precioarticulo dword 0d
descuento dword 0




.code
	mainej19 PROC
	
		;Lógica del Programa	 
		
		;Realice el algortimo para determinarr cuanto pagara una
		;persona que adquiere N articulos , los cuales estan de promocion.
		;Considere que si su precio es mayor o igual a 200 se le aplica un
		;descuento de 20%, y si su precio es mayor a 100 pero menor a 200
		;el descuento es de 30%; de lo contrario , solo se le aplica 10%.
		;Se debe saber cual es el costo y el desceunto que tendra cada uno
		;de los articulos y finalmente cuanto se pagara por todos los articulos
		;obtenidos.

		println "Cantidad de articulos: "
		call readint ; LEYENDO CANTIDAD EN EAX
		mov ecx , eax

		ciclo:
			println "Ingrese el articulo"
			call readint; LEYENDO ARTICULO EN EAX

			cmp eax , 200
			jge MayorOiguala200
			cmp eax, 100
			jl Menora100
			jmp Entre100y200
		
			MayorOiguala200:
			println "Descuento del 20% aplicado"
			jmp finCiclo

			Entre100y200:
			println "Descuento del 30% aplicado"
			jmp finCiclo

			 MenorA100:
			 println "Descuento del 10% aplicado"
			 jmp finCiclo

		finCiclo:
		loop ciclo











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

