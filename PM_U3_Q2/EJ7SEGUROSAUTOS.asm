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
cuotaAlcohol dword 10d ; Para cambiarlo mas adelante 
cuotaLentes dword 0d
cuotaEnfermedad dword 0d
acumulador dword 0d


respaldo dword 0d
.code
	mainej7 PROC
	
		;Lógica del Programa	 

		;***********EVALUANDO EDAD DEL CONDUCTOR***************

		println "Ingresa la edad del conductor: "
		call readint 
		xchg edad , eax
		cmp edad , 40
		jg Masde40

		;*SI LA EDAD ES MENOR QUE 40
		mov cuotaEdad, 10
		xchg eax,cuotaEdad
		add eax , acumulador
		xchg ebx , eax ; RESPALDANDO EL RESULTADO DE eax(10) + acumulador(0) , y el resultado lo pasamos a ebx
		jmp etqPoliza 

		MasDe40:
			mov cuotaEdad , 30
			xchg eax,cuotaEdad
			add eax , acumulador
			xchg ebx , eax ; RESPALDANDO EL RESULTADO DE eax(30) + acumulador(0) , y el resultado lo pasamos a ebx
			jmp etqPoliza

		call crlf
		
		xchg respaldo , ebx ; RESPALDANDO EL RESULTADO
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
			mov eax , cuotaAlcohol ;(20)
			add eax , ebx

			mov acumulador , eax
			
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
		jmp etqEnfermedad 

		tipolenSi:
			println "SI USA LENTES"
			mov cuotaLentes , 10
			jmp etqEnfermedad
			
		;***********EVALUANDO SI PADECE UNA ENFERMEDAD***************
		etqEnfermedad:

		call crlf
		println "Padeces una enfermedad?(S o N)"
		call readchar
		cmp al , 'S'
		je tipoenferSi

		;Si llegamos aqui , significa que cobertura no es igual a S
		mov cuotaEnfermedad , 0
		jmp salir 

		tipoenferSi:
			println "SI USA LENTES"
			mov cuotaEnfermedad , 10
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
		xchg eax , cuotaEnfermedad
		call crlf
		println "VALOR AL TENER ENFERMEDAD:"
		call writedec
		;xchg eax , acumulador
		call crlf
		;add eax , ebx
		;mov eax , ebx
		mov eax , acumulador
		println "VALOR DEL ACUMULADOR:"
		call writedec

	
		exit

	mainej7 ENDP
	
	END mainej7

