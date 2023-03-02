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

nombre1_12 byte 50 dup ('G')
nombre2_12 byte 50 dup ('A')
.code


	mainp12 PROC
	
		;Lógica del Programa
		     
			 println "Ingresa el primer integrante: "
			 mov edx, offset nombre1_12 ; LOCALIDAD DE MEMORIA DONDE SE GUARDARA LA CADENA LEIDA
			 mov ecx, sizeof nombre1_12 ; MAXIMA CANTIDAD DE CARACTERES QUE CONTENDRA LA CADENA

			 call readstring ; el valor se va almacenar en nombre

			 println "Ingresa el segundo integrante: "

			 mov edx, offset nombre2_12
			 mov ecx, sizeof nombre2_12
			 call readstring

			mov edx, offset nombre1_12
			call writestring
			call crlf

			mov edx, offset nombre2_12
			call writestring
			call crlf

	    

		exit

	mainp12 ENDP
	
	END mainp12