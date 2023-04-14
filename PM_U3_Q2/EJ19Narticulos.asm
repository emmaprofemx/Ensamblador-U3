TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Alejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE macros.inc
.data
; �rea de Declaraci�n de Variables

;CONSTANTES
precioarticulo dword 0d
divisor1 dword 10d
divisor2 dword 20d
divisor3 dword 30d
resultadodescuento dword 0d
costo_descuento dword 0d
preciocondescuento dword 0d
total_compra dword 0d


.code
	mainej19 PROC
	
		;L�gica del Programa	 
		
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
		mov ecx , eax ; CANTIDAD DE VUELTAS PARA EL CICLO

		ciclo:
			println "Ingrese el articulo"
			call readint; LEYENDO ARTICULO EN EAX
			;mov precioarticulo , eax
			cmp eax , 200
			jge MayorOiguala200
			cmp eax, 100
			jl Menora100
			jmp Entre100y200
		
			MenorA100:
    println "Descuento del 10% aplicado"
    mov precioarticulo , eax
    mov edx, 0
    div divisor1
   ;sub eax , precioarticulo
   sub precioarticulo, eax

    println "El total de este articulo es: "
    mov eax, precioarticulo
    call writedec
    jmp finciclo


			Entre100y200:
			println "Descuento del 30% aplicado"
			jmp finciclo

			MayorOiguala200:
			println "Descuento del 20% aplicado"
			jmp finciclo

			

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

