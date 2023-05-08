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
multiplicador dword 1d
;-----INCREMENTADORES-------
is dword 1d ; INCREMENTADOR SUMA
im dword 1d ; INCREMENTADOR MULTIPLICACION
.code

	maincalcu01 PROC
	
		;Lógica del Programa

		operacion:
		;----LIMPIANDO REGISTROS-----
		mov eax , 0;
		mov ebx , 0;
		mov ecx , 0;
		mov edx , 0;

		;----------------------------
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
	
	;************OPCIONES*******************
	cmp opcion , 1
	je suma

	cmp opcion , 2
	je resta

	cmp opcion , 3
	je multiplicacion

	cmp opcion , 4
	je division
	;***************************************

	;****************E T I Q U E T A S******************
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
    mov is, 1 ; inicializamos el contador en 1
    cicloresta:
        println "Ingresa un numero: (ingresa 't' para terminar)"
        call readchar ; leemos un caracter
        cmp al, 't' ; comparamos si el caracter es 't'
        je salir ; si es 't', saltamos a salir
        call readint ; leemos el entero
        cmp is, 1 ; comparamos si es el primer número
        je primeronumero ; si es el primer número, saltamos a la etiqueta "primeronumero"
        sub acumulador, eax ; restamos el número ingresado al acumulador
        mov eax, acumulador
		println "Resultado hasta el momento:"
        call writedec ; imprimimos el acumulador
        call crlf ; saltamos de línea
        jmp cicloresta ; volvemos a pedir otro número
    primeronumero:
        mov acumulador, eax ; asignamos el primer número al acumulador
        add is, 1 ; incrementamos el contador
        jmp cicloresta ; volvemos a pedir otro número
	jmp salir


	multiplicacion:
    println "Estas en la parte de multiplicacion"
    mov acumulador, 1 ; inicializamos el acumulador en 1
    ciclomulti:
         println "Ingresa un numero: (ingresa 't' para terminar)"
        call readchar ; leemos un caracter
        cmp al, 't' ; comparamos si el caracter es 't'
        je salir ; si es 't', saltamos a salir

        call readint ; leemos el entero
        mul multiplicador ; multiplicamos el valor anterior con el valor actual
        mov multiplicador, eax ; actualizamos el valor anterior con el resultado
        mov eax, multiplicador ; guardamos el resultado en eax para imprimirlo
        call writedec ; imprimimos el resultado
        call crlf ; saltamos de línea
        jmp ciclomulti ; volvemos a pedir otro número
    jmp salir

	division:
    println "Estas en la parte de division"
    println "Ingresa el dividendo:"
    call readint ; leemos el dividendo
    mov ebx, eax ; guardamos el dividendo en ebx
    mov eax, 0 ; limpiamos eax
    println "Ingresa el divisor:"
    call readint ; leemos el divisor
    cmp eax, 0 ; comprobamos si el divisor es cero
    je division_error ; si es cero, saltamos a la etiqueta "division_error"
    mov ecx, eax ; guardamos el divisor en ecx
    mov eax, ebx ; movemos el dividendo a eax
    mov edx, 0 ; limpiamos edx
    div ecx ; dividimos eax entre ecx
    println "El resultado de la division es:"
    call writedec ; imprimimos el resultado
    call crlf ; saltamos de línea
    jmp salir ; saltamos a la etiqueta "salir"

division_error:
    println "Error: division entre cero"
    jmp salir ; saltamos a la etiqueta "salir"

	

	;**************SALIDA******************
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