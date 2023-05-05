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
masmas dword 1d
opcion dword 0d
resgeneral dword 0d ; RESULTADO GENERAL
meses dword 12d
acumulador dword 0d
is dword 1d
.code

	maincalcu01 PROC
	
		;Lógica del Programa

		operacion:
		mov eax , 0;
		mov ebx , 0;
		mov ecx , 0;
		mov edx , 0;
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
	
	;-----------OPCIONES----------------
	cmp opcion , 1
	je suma

	cmp opcion , 2
	je resta

	cmp opcion , 3
	je multiplicacion

	cmp opcion , 4
	je division
	;-----------------------------------

	;-----------ETIQUETAS----------------
	suma:
	println "Estas en la parte de suma"
    mov is, 1 ; inicializamos el contador en 1
    ciclo:
        println "Ingresa un numero: (ingresa 't' para terminar)"
        call readchar ; leemos un caracter
        cmp al, 't' ; comparamos si el caracter es 't'
        je salir ; si es 't', saltamos a salir
        call readint ; leemos el entero
        add acumulador, eax ; lo sumamos al acumulador
        add is, 1 ; incrementamos el contador
        mov eax, acumulador
		println "Resultado hasta el momento:"
        call writedec ; imprimimos el acumulador
        call crlf ; saltamos de línea
        jmp ciclo ; volvemos a pedir otro número
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
	;-----------------------------------

	;-----------DESEA CONTINUAR?----------------
	salir:
	; Preguntar si el usuario desea continuar
		println "Desea continuar? (S/N)"
		call readchar ; leemos la respuesta del usuario
		cmp al , 'S' ; SI INGRESO LA S , VOLVEMOS AL MENU PRINCIPAL
		je operacion ; Si el usuario desea continuar, saltamos a la etiqueta "operacion"
		cmp al , 's' ; SI INGRESO LA S , VOLVEMOS AL MENU PRINCIPAL
		je operacion ; Si el usuario desea continuar, saltamos a la etiqueta "operacion"
	exit
	maincalcu01 ENDP
	END maincalcu01