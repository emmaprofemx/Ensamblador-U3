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
anios dword 0d
n dword 100d
m dword 1000d
bono dword 0d
.code
	mainej8 PROC
	
		;Lógica del Programa	  
		
		;Se les dara un bono por antiguedad a los empleados de una tienda.
		;Si tienen una anio , se les dara $100 ; si tienen 2 anios , $200  , y asi sucesivamente
		;hasta los 5 anios. Para los que tengas mas de 5 , el bono sera de $1000. Determinar el bono
		;que recibira un trabajador.

		println "Ingresa los anios trabajados: "
		call readint ; LEEMOS EAX
		mov ecx , eax

		ciclo:
			inc i
			mov eax , i
			mul n
		loop ciclo

		println "El bono es: "
		call writedec
		call crlf


		exit

	mainej8 ENDP
	
	END mainej8

