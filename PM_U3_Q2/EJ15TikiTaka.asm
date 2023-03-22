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
acumulador dword 0d
venta dword 0d
vueltas dword 0d
catuno dword 0d
.code
	mainej15 PROC
	
		;L�gica del Programa	  
		 println "Cantidad de ventas en el dia:"
		 call readint ; LEEMOS EN EAX
		 mov vueltas, eax ; MOVEMOS EL VAMOR DE EAX 

		 mov ecx, vueltas ; N CANTIDAD DE VUELTAS

		 ciclo:
			 println "Ingresa la venta"
			 call readint ;LEEMOS EAX
			 mov venta, eax
			 cmp venta, 1000
			 mov eax , venta
			 add catuno,eax
			 jge ventaMayor1000

		 loop ciclo

		ventaMayor1000:
        ; Si la venta es mayor a 1000, la sumamos a la variable catuno
		mov eax , catuno
		call writedec ; MOSTRANDO EL TOTAL
        


		salir:
		exit

	mainej15 ENDP
	
	END mainej15

