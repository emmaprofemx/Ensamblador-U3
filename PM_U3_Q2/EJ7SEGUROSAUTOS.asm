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
cuotaBase dword 0d
edad dword 0d
cuotaEdad dword 0d

.code
	mainej7 PROC
	
		;Lógica del Programa	 

		println "Ingresa la edad del conductor: "
		call readint 
		xchg edad , eax

		cmp edad , 40
		jg Masde40

		;*SI LA EDAD ES MENOR QUE 40
		mov cuotaEdad, 10
		jmp etqPoliza 

		MasDe40:
			mov cuotaEdad , 40
			jmp etqPoliza

		call crlf
		
		etqPoliza:
		;***********EVALUANDO TIPO DE POLIZA***************

		println "Ingresa el tipo de Poliza (A o B): "	
		call readchar
		cmp al , 'A'
		je tipoA
		
		;Si llegamos aqui , significa que cobertura no es igual a A
		mov cuotaBase , 950
		jmp salir

		tipoA:
			println "ERES TIPO A"
			mov cuotaBase , 1200
			jmp salir


		salir:
		call crlf
		xchg eax , cuotaBase
		println "El valor de costo Base es: "
		call writedec
		call crlf
		xchg eax , cuotaEdad
		println "La valor de la cuota Edad es: "
		call writedec

	
		exit

	mainej7 ENDP
	
	END mainej7

