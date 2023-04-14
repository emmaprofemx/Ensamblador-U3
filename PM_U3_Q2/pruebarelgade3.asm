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

.data
; Área de Declaración de Variables
var1 dword 20d ; valor del porcentaje
var2 dword 300d ; valor del producto
var1_8 dword 100d
.code

	mainp701 PROC

		;Lógica del Programa
		
		mov eax , var1 ; VALOR DEL PORCENTAJE
		mul var2 ; MULTIPLICAMOS (PORCENTAJE * PRECIO DEL PRODUCTO)
		mov edx , 0 ; LIMPIAMOS REGISTRO
		div var1_8 ; REALIZAMOS LA DIVISION ENTRE 100
		call writedec ; 45 OBTENEMOS EL VALOR DEL DESCUENTO
		
		sub var2 , eax ; HACEMOS LA RESTA CORRESPONDIENTE
		call crlf
		mov eax , var2 ; LO MOVEMOS A EAX
		call writedec ; LO MOSTRAMOS A PANTALLA

		exit	
	
	mainp701 ENDP
	
	END mainp701