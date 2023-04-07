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
sueldo DWORD 0d
antiguedad DWORD 0d
bono DWORD 0d
.code
	mainej6 PROC
		;L�gica del Programa	 
		
    ; Solicitar el sueldo al usuario
    println "Introduzca su sueldo: "
    call ReadInt
    mov sueldo, eax

    ; Solicitar la antig�edad al usuario
    println "Introduzca la antiguedad en a�os: "
    call ReadInt
    mov antiguedad, eax

    ; Calcular el bono seg�n la antig�edad o el sueldo
    cmp antiguedad, 2
    jl sueldoMayor1000 ; Si la antig�edad es menor a 2, calcular seg�n el sueldo
    cmp antiguedad, 5
    jl antiguedadMenor5 ; Si la antig�edad est� entre 2 y 5, calcular seg�n la antig�edad
    
    ; Si la antig�edad es mayor o igual a 5, calcular seg�n la antig�edad
    mov eax, sueldo
    mov ebx, 40
    mul ebx
    mov ebx, 100
    div ebx
    mov bono, eax
    jmp mostrarBono

sueldoMayor1000:
    cmp sueldo, 1000
    jl sueldoMenor1000 ; Si el sueldo es menor a 1000, calcular seg�n el sueldo
    cmp sueldo, 3500
    jle sueldoEntre1000y3500 ; Si el sueldo est� entre 1000 y 3500, calcular seg�n el sueldo
    ; Si el sueldo es mayor a 3500, calcular seg�n el sueldo
    mov eax, sueldo
    mov ebx, 10
    mul ebx
    mov ebx, 100
    div ebx
    mov bono, eax
    jmp mostrarBono

sueldoMenor1000:
    mov eax, sueldo
    mov ebx, 20
    mul ebx
    mov ebx, 100
    div ebx
    mov bono, eax
    jmp mostrarBono

sueldoEntre1000y3500:
    mov eax, sueldo
    mov ebx, 10
    mul ebx
    mov ebx, 100
    div ebx
    mov bono, eax
    jmp mostrarBono

antiguedadMenor5:
    mov eax, sueldo
    mov ebx, 20
    mul ebx
    mov ebx, 100
    div ebx
    mov bono, eax
    jmp mostrarBono

mostrarBono:
    ; Mostrar el bono calculado al usuario
    println "El bono mensual es de:$ "
    mov eax, bono
    call WriteDec
    call crlf

		exit

	mainej6 ENDP
	
	END mainej6

