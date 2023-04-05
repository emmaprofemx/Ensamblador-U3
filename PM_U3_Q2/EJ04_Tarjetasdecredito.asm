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


Tarjetatipo1  dword 1
Tarjetatipo2  dword 2
Tarjetatipo3  dword 3
limite  dword 0
incremento dword 0
respuesta dword 0



.code
	mainej4 PROC
		;Lógica del Programa	 

  ; Preguntar al usuario por el tipo de tarjeta y el límite actual

   println "Introduzca el tipo de tarjeta (1, 2 o 3): "
    call ReadInt
   mov  ecx, eax

   println "Introduzca el limite actual de la tarjeta: "
    call ReadInt
    mov  ebx, eax
    
    ; Calcular el incremento del limite basado en el tipo de tarjeta
    cmp  ecx, Tarjetatipo1
    je   tipo1
    cmp  ecx, Tarjetatipo2
    je   tipo2
    cmp  ecx, Tarjetatipo3
    je   tipo3
    jmp  otro_tipo
    
tipo1:
    mov  incremento, 20
    jmp  calcular_respuesta
    
tipo2:
    mov  incremento, 40
    jmp  calcular_respuesta
    
tipo3:
    mov  incremento, 60
    jmp  calcular_respuesta
    
otro_tipo:
    mov  incremento, 80
    
calcular_respuesta:
    ; Calcular el nuevo límite
    mov  eax, ebx
    mov  edx, 0
    mul  incremento
    mov  ecx, 100
    div  ecx
    println "El saldo que se agrego fue de :$ "
    call writeint
    call crlf
    add  eax, ebx


    ; Imprimir el nuevo limite

    println "El nuevo limite de la tarjeta es de :$ "
    call writeint
		
		fin_programa:
		exit

	mainej4 ENDP
	
	END mainej4

