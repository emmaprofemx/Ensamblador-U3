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

i dword 0d
j dword 0d
n dword 100d ; VALOR QUE SE VA A MULTIPLICAR MIENTRAS anios sean menores a 5
m dword 1000d ; VALOR QUE SE MOSTRARA COMO EL BONO SI ES MAYOR A 6
.code
	mainej8 PROC
	
		;Lógica del Programa	  
		
		;Se les dara un bono por antiguedad a los empleados de una tienda.
		;Si tienen una anio , se les dara $100 ; si tienen 2 anios , $200  , y asi sucesivamente
		;hasta los 5 anios. Para los que tengas mas de 5 , el bono sera de $1000. Determinar el bono
		;que recibira un trabajador.

		println "Ingresa los anios trabajados: "
		call readint ; LEEMOS EAX
		mov ecx , eax ; DEFINIMOS LA CANTIDAD DE VUELTAS A NUESTRO CICLO
		cmp ecx , 5 ; EVALUAMOS SI ECX ES IGUAL A 5
		jle casouno ; SI ES MENOR O IGUAL , IRA AL CASOUNO
		cmp ecx , 6 ; EVALUAMOS SI ECX ES IGUAL A 6
		jmp casodos ; SI ES ASI , SALTAMOS AL CASODOS

		casouno: ; DENTRO DEL CASOUNO establecemos lo siguiente
			ciclo:
			inc i ; incrementamos el valor de 0 a 1
			mov eax , i ; movemos el valor al registro eax para multiplicarlo
			mul n ; obtendremos el bono mientras sea menor o igual a 5
				loop ciclo
			println "El bono es: "
				call writedec ; AL FINAL MOSTRAMOS EL BONO CORRESPONDIENTE ENTRE 1-5
				call crlf
			jmp salir ; SALTAMOS A LA ETIQUETA SALIR , PARA FINALIZAR EL PROGRAMA

		casodos: ;DENTRO DEL CASODOS ESTABLECEMOS LO SIGUIENTE
		mov eax , m ; MOVEMOS EL VALOR DE 1000 AL REGISTRO EAX
		;REALIZAMOS ESTO YA QUE MIENTRAS SEA MAYOR A 6 , EL BONO SERA DE 1000
		println "Tu bono es: "
		call writedec ; MOSTRAMOS EL BONO

		salir: ;ETIQUETA PARA FINALIZAR EL PROGRAMA
		exit

	mainej8 ENDP
	
	END mainej8

