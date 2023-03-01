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

.code


	mainp10 PROC
	
		;Lógica del Programa
	    
println "Ingresa el valor de A"
call readint
println "Ingresa el valor de B"

mov ebx, eax

call readint

add eax,ebx

call waitmsg
println "La suma es: "
call writedec
	    

		exit

	mainp10 ENDP
	
	END mainp10