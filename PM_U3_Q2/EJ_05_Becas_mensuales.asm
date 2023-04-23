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
 mensajeEdad BYTE "Ingrese su edad: ",0
    mensajePromedio BYTE "Ingrese su promedio: ",0
    mensajeBeca BYTE "Usted recibira una beca de $",0
    mensajeInvitacion BYTE "Lo invitamos a estudiar más en el próximo ciclo escolar",0
    beca dword 0d
    edad dword 0d
    promedio dword 0d
.code
	mainej5 PROC
		;Lógica del Programa	 
		 ; Pedir la edad del estudiante
        mov edx, OFFSET mensajeEdad
        call WriteString
        call ReadInt
        mov edad, eax
        
        ; Pedir el promedio del estudiante
        mov edx, OFFSET mensajePromedio
        call WriteString
        call ReadInt
        mov promedio, eax
        
        ; Verificar la edad del estudiante
        cmp edad, 18
        jl menorDeEdad
        ; Si es mayor de edad, verificar el promedio

        cmp promedio, 9
        jge beca2000
        cmp promedio, 7
        jge beca1000
        cmp promedio, 6
        jge beca500
        ; Si el promedio es menor a 6, enviar una invitación
        mov edx, OFFSET mensajeInvitacion
        call WriteString
        jmp fin
        
    beca2000:
        ; Si el promedio es mayor o igual a 9, dar una beca de $2000
        mov beca, 2000
        jmp mostrarBeca
        
    beca1000:
        ; Si el promedio es mayor o igual a 7.5, dar una beca de $1000
        mov beca, 1000
        jmp mostrarBeca
        
    beca500:
        ; Si el promedio es mayor o igual a 6, dar una beca de $500
        mov beca, 500
        jmp mostrarBeca
        
    menorDeEdad:
        ; Si es menor de edad, verificar el promedio
        cmp promedio, 9
        jge beca3000m
        cmp promedio, 8
        jge beca2000m
        cmp promedio, 6
        jge beca100m
        ; Si el promedio es menor a 6, enviar una invitación
        mov edx, OFFSET mensajeInvitacion
        call WriteString
        jmp fin
        
    beca3000m:
        ; Si el promedio es mayor o igual a 9, dar una beca de $3000
        mov beca, 3000
        jmp mostrarBeca
        
    beca2000m:
        ; Si el promedio es mayor o igual a 8, dar una beca de $2000
        mov beca, 2000
        jmp mostrarBeca
        
    beca100m:
        ; Si el promedio es mayor o igual a 6, dar una beca de $100
        mov beca, 100
        jmp mostrarBeca
        
    mostrarBeca:
        ; Mostrar el mensaje de la beca y el monto
        mov edx, OFFSET mensajeBeca
        call WriteString
        mov eax, beca
        call WriteDec
        jmp fin
        
    fin:
        ; Salir del programa
        call Crlf
		exit

	mainej5 ENDP
	
	END mainej5

