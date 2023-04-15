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
cuotaBase dword 0d
edad dword 0d
cuotaEdad dword 0d
cuotaAlcohol dword 10d ; Para cambiarlo mas adelante 
cuotaLentes dword 0d

.code
	mainej7 PROC
	
		;L�gica del Programa	 

		;***********EVALUANDO EDAD DEL CONDUCTOR***************
		println "Ingresa la edad del conductor: "
		call readint 
		xchg edad , eax
		cmp edad , 40
		jg Masde40

		;*SI LA EDAD ES MENOR QUE 40
		mov cuotaEdad, 10
		jmp etqPoliza 

		MasDe40:
			mov cuotaEdad , 30
			jmp etqPoliza

		call crlf
		
		;***********EVALUANDO TIPO DE POLIZA***************

		etqPoliza:
		println "Ingresa el tipo de Poliza (A o B): "	
		call readchar
		cmp al , 'A'
		je tipoA
		
		;Si llegamos aqui , significa que cobertura no es igual a A
		mov cuotaBase , 950
		jmp etqAlcohol 

		tipoA:
			println "ERES TIPO A"
			mov cuotaBase , 1200
			jmp etqAlcohol
		
		;***********EVALUANDO HABITO DE BEBER ALCOHOL***************

		etqAlcohol:
		call crlf
		println "Habito por beber alcohol?(S o N)"
		call readchar
		cmp al , 'S'
		je tiposI
		
		;Si llegamos aqui , significa que cobertura no es igual a S
		mov cuotaAlcohol , 0
		jmp etqLentes 

		tiposI:
			println "SI INGIERE ALCOHOL"
			mov cuotaAlcohol , 20
			jmp etqLentes

		;***********EVALUANDO SI USA LENTES***************

		etqLentes:
		call crlf
		println "Usas lentes?(S o N)"
		call readchar
		cmp al , 'S'
		je tipolenSi

		;Si llegamos aqui , significa que cobertura no es igual a S
		mov cuotaLentes , 0
		jmp salir 

		tipolenSi:
			println "SI USA LENTES"
			mov cuotaLentes , 10
			jmp salir
			

		;***********S A L I D A***************
		salir:
		call crlf
		xchg eax , cuotaBase
		println "El valor de costo Base es: "
		call writedec
		xchg eax , cuotaEdad
		call crlf
		println "La valor de la cuota Edad es: "
		call writedec
		xchg eax , cuotaAlcohol
		call crlf
		println "VALOR DE ALCOHOL: "
		call writedec
		xchg eax , cuotaLentes
		call crlf
		println "VALOR AL USAR LENTES:"
		call writedec


	
		exit

	mainej7 ENDP
	
	END mainej7
