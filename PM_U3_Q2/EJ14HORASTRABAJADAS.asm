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

tarifa dword 37d
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
			mov eax , vueltas ; MOVEMOS EL VALOR DE VUELTAS A EAX
			sub eax , ecx ; VAMOS A IR RESTANDO
			inc eax ; DESPUES INCREMENTAMOS EEL VALOR , ESTO SE HACE PARA NO MOSTRAR EL CASO 0
			;call crlf
			println "Horas trabajadas en el dia "
			call writedec ; MOSTRAMOS LA POSICION ACTUAL
			mov eax , 0 ; RESETEAMOS EAX - PARA LEER LOS DATOS
			call crlf ; SALTO DE LINEA
			call readint ; leemos eax
			add horas_trabajadas , eax ; IREMOS SUMANDO LAS HORAS DE CADA DIA eax(f) = horas_trabajadas + eax
			
		loop ciclo
		mov eax , horas_trabajadas ; PASAMOS EL VALOR ALMACENADO DE HORAS TRABAJADAS A EAX
		println "Total de horas trabajadas en la semana: "
		call writedec ; IMPRIMIMOS LAS HORAS TRABAJADAS
		mul tarifa ; multiplicamos las horas trabajadas * el valor de la tarifa , que se guardara en eax
		call crlf
		println "Sueldo del empleado: "
		call writedec ; MOSTRAMOS EL SUELDO DEL EMPLEADO

		exit

	mainej14 ENDP
	
	END mainej14

