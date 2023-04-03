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
acumulador dword 0d
venta dword 0d
vueltas dword 0d
catuno dword 0d
catdos dword 0d
cattres dword 0d
.code
	mainej15 PROC
	
		;Lógica del Programa	  
		 println "Cantidad de ventas en el dia:"
		 call readint ; LEEMOS EN EAX
		 mov vueltas, eax ; MOVEMOS EL VALOR DE EAX 

		 mov ecx, vueltas ; N CANTIDAD DE VUELTAS

		 ciclo:
		     println "Ingresa la venta: "
             call readint ;LEEMOS EAX
             cmp eax, 1000 ; COMPARA CON 1000
             jg ventaMayor1000
             cmp eax, 500 ; COMPARA CON 500
             jg ventaMayor500
             inc cattres ; INCREMENTA SI ES MENOR O IGUAL A 500
             jmp finCiclo

             ventaMayor1000:
             inc catuno ; INCREMENTA SI ES MAYOR A 1000
             jmp finCiclo
             
             ventaMayor500:
             inc catdos ; INCREMENTA SI ES MAYOR A 500 Y MENOR O IGUAL A 1000

             finCiclo:
			 loop ciclo
         mov eax, catuno ; MOVEMOS EL VALOR PARA MOSTRARLO A PANTALLA
         println "Ventas mayores a 1000: "
         call writedec ; MOSTRANDO EL TOTAL DE VENTAS MAYORES A 1000
         call crlf
         mov eax, catdos ; MOVEMOS EL VALOR PARA MOSTRARLO A PANTALLA 
         println "Ventas mayores a 500 y menores o iguales a 1000: "
         call writedec ; MOSTRANDO EL TOTAL DE VENTAS MAYORES A 500 Y MENORES O IGUALES A 1000
         call crlf
         mov eax, cattres ; MOVEMOS EL VALOR PARA MOSTRARLO A PANTALLA 
         println "Ventas menores o iguales a 500: "
         call writedec ; MOSTRANDO EL TOTAL DE VENTAS MENORES O IGUALES A 500
         call crlf

		exit

	mainej15 ENDP
	
	END mainej15

