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
;divisor1 dword 10d
;divisor2 dword 20d
;divisor3 dword 30d
resultadodescuento dword 0d
costo_descuento dword 0d
preciocondescuento dword 0d
total_compra dword 0d

des1 dword 10d 
des2 dword 20d  
des3 dword 30d 
var2 dword 300d ; valor del producto
var1_8 dword 100d


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
		mov ecx , eax ; CANTIDAD DE VUELTAS PARA EL CICLO

		ciclo:
			println "Ingrese el articulo"
			call readint; LEYENDO ARTICULO EN EAX
			mov precioarticulo , eax
			cmp precioarticulo , 200
			jge MayorOiguala200
			cmp precioarticulo, 100
			jl Menora100
			jmp Entre100y200
		
			MenorA100:
			 println "Descuento del 10% aplicado"
			  mov eax , des1 ; PASANDO EL VALOR DE 10
			  mul precioarticulo
			  mov edx , 0
			  div var1_8
			  call writedec
			  sub precioarticulo , eax
			  call crlf
			  mov eax , precioarticulo
			  call writedec
			dec ecx
            jnz finciclo ; FUNCIONAAAA

			Entre100y200:
			println "Descuento del 30% aplicado"
			  mov eax , des3 ; PASANDO EL VALOR DE 30
			  mul precioarticulo
			  mov edx , 0
			  div var1_8
			  call writedec
			  sub precioarticulo , eax
			  call crlf
			  mov eax , precioarticulo
			  call writedec



			dec ecx
			jnz finciclo

			MayorOiguala200:
			println "Descuento del 20% aplicado"
			dec ecx
			jnz finciclo

			

		finCiclo:
		jnz ciclo











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

