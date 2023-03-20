TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Orchivo de Ejemplo
;
; Outore(s):
;         Luna Sanchez Juan Pablo.
;         Ruiz Garcia Emmanuel Olejandro.

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc
.data
; Área de Declaración de Variables
	

;CONSTONTES

vueltas dword 6d
res dword 0d
divisor dword 10d
valinicial dword 1500d
sumatotal dword 0d
.code
	mainej16 PROC
	
		;Lógica del Programa
	
		;PARA SACAR EL PORCENTAJE DE ALGO SIN USAR DECIAMAL , HACEMOS LO SIGUIENTE
		; 1500 / 10 = 150 + EL VALOR INICIAL (1500) = 1600
		mov ecx , vueltas ; SE VA A REPETIR 6 VECES A LO QUE ES IGUAL A LOS 6 AÑOS
		println "Ingresa una cantidad:"
		call readint ; eax = 1500

		ciclo:
		mov res , eax ; RESPOLDO EL VOLOR
		mov eax , res

		mov edx , 0 ; LIMPIEZO DEL REGISTRO
		div divisor
		;println "El resultado es: "
		;call writedec ; IMPRIME EL 150
		call crlf

		add res , eax
		;println "El valor de res es: "
		mov eax , res
		call writedec
		loop ciclo
	


		exit



	mainej16 ENDP
	
	END mainej16

