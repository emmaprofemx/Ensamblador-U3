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

opcion dword 0d
.code

	maincalcu01 PROC
	
		;Lógica del Programa
		operacion:
	;-----------MENU----------------	
	println "PROYECTO CALCULADORA"
	println "1.-Suma"
	println "2.-Resta"
	println "3.-Multipliacion"
	println "4.-Division"
	println "SELECCIONA UNA DE LAS SIGUIENTES OPERACIONES"
	;-------------------------------

	;-----------LEYENDO OPCION----------------
	call readint ; leemos la opcion eax
	mov opcion , eax
	;-----------------------------------------
	
	cmp opcion , 1
	je suma

	cmp opcion , 2
	je resta

	cmp opcion , 3
	je multiplicacion

	cmp opcion , 4
	je division

	suma:
		println "Estas en la parte de suma"
	jmp salir

	resta:
		println "Estas en la parte de resta"
	jmp salir

	multiplicacion:
		println "Estas en la parte de multiplicacion"
	jmp salir

	division:
		println "Estas en la parte de division"
	jmp salir


	salir:
	; Preguntar si el usuario desea continuar
		println "Desea continuar? (S/N)"
		call readchar ; leemos la respuesta del usuario
		cmp al , 'S' ; SI INGRESO LA S , VOLVEMOS AL MENU PRINCIPAL
		je operacion ; Si el usuario desea continuar, saltamos a la etiqueta "operacion"

	exit
	maincalcu01 ENDP
	END maincalcu01