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
meses dword 12d
.code
	mainej12 PROC
	
		;Lógica del Programa	  
		mov ecx , meses ; SE VA A REPETIR 12 VECES , CORRESPONDIENTE A LOS 12 MESES DEL ANIO
			
		ciclo:
			println "Cuanto vas a depositar?"
			call readint ; PEDIMOS EL VALOR Y LO ALMACENAMOS EN EAX
			add acumulador , eax
			println "Tu total hasta este mes es: "
			mov eax , acumulador
			call writedec
			call crlf ;SALTO DE LINEA
		 loop ciclo 
		 mov eax , acumulador
		 println "Ahorro total en el anio: "
		 call writedec ; IMPRIME LO DE EAX SIN SIGNO
		exit

	mainej12 ENDP
	
	END mainej12

