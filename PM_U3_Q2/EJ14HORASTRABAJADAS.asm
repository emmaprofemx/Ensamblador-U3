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

tarifa dword 0d
horas_trabajadas dword 0d
sueldo dword 0d
vueltas dword 6d
.code
	mainej14 PROC
	
		;Lógica del Programa	  
		
		;Una empresa tiene el registro de las horas que trabaja diariamente un empleado
		;durante la semana(dias) y requiere determinat el total de estas , asi como el
		;sueldo que recibira por las horas trabajadas

		mov ecx , vueltas ; SE VA A REPETIR 6 VECES (DIAS) 
		
		ciclo:
			mov eax , vueltas
			sub eax , ecx 
			inc eax
			println "Vuelta"
			call writedec
			call crlf


		loop ciclo

		exit

	mainej14 ENDP
	
	END mainej14

