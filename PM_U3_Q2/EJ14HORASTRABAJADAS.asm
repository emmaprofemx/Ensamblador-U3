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

tarifa dword 10d
horas_trabajadas dword 0d
sueldo dword 0d
vueltas dword 6d
total dword 0d
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
			;call crlf
			println "Horas trabajadas en el dia "
			call writedec
			mov eax , 0 ; RESETEAMOS EAX
			call crlf
			call readint ; leemos eax
			add horas_trabajadas , eax
			
		loop ciclo
		mov eax , horas_trabajadas ; SE GUARDA EL VALOR DE HORAS TRABAJADAS (47)
		println "Total de horas trabajadas en la semana: "
		call writedec 
		mul tarifa
		call crlf
		println "Sueldo del empleado: "
		call writedec 

		exit

	mainej14 ENDP
	
	END mainej14

