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

res dword 0d
divisor dword 10d
valinicial dword 1500d
.code
	mainej16 PROC
	
		;L�gica del Programa	
		println "Ingresa una cantidad:"
		call readint ; eax = 1500
		mov res , eax ; RESPALDO EL VALOR
		mov eax , res

		mov edx , 0 ; LIMPIEZA DEL REGISTRO
		div divisor
		println "El resultado es: "
		call writedec
		call crlf

		println "El valor de res es: "
		mov eax , res
		call writeint
		



		exit



	mainej16 ENDP
	
	END mainej16

