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
 numCita DWORD 0d
    costoConsulta DWORD 0d
    costoTotal DWORD 0d
.code
	mainej2 PROC
		;Lógica del Programa	 

		; Solicitar el sueldo al usuario
   println "cuantas citas fueron?"
    call ReadInt
  
    
    ; Determinar el costo de la consulta según el número de cita
    cmp eax, 3
    jle costo200
    cmp eax, 5
    jle costo150
    cmp eax, 8
    jle costo100
    jmp costo50
    
    ; Calcular el costo de la consulta y el costo total

costo200:
    mov costoConsulta, 200
    mov ecx,costoConsulta ; aqui se respalda el costo de la consulta
    mul costoConsulta
    mov costoTotal,eax
    jmp calcularCostoTotal

costo150:
mov costoConsulta, 150
mov ecx,costoConsulta ; aqui se respalda el costo de la consulta
    sub eax,3
    mul costoConsulta
    add eax, 600
    mov costoTotal,eax
    jmp calcularCostoTotal
    
costo100:
mov costoConsulta, 100
mov ecx,costoConsulta ; aqui se respalda el costo de la consulta
    sub eax,5
    mul costoConsulta
    add eax, 900
    mov costoTotal,eax
    jmp calcularCostoTotal

costo50:
mov costoConsulta, 50
mov ecx,costoConsulta ; aqui se respalda el costo de la consulta
    sub eax,8
    mul costoConsulta
    add eax, 1200
    mov costoTotal,eax

    ; Calcular el costo total
calcularCostoTotal:

println "El costo de la cita es:"
mov eax, ecx
call WriteDec
call crlf
println"El costo del tratamiento es: "
mov eax, costoTotal
call WriteDec


		exit

	mainej2 ENDP
	
	END mainej2

