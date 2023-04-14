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
	mainej7 PROC
	
		;Lógica del Programa	 
		println "Ejercicio 7"

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

	mainej7 ENDP
	
	END mainej7

