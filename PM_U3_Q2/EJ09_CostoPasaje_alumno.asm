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


.data
num_alumnos dword 0d
costo_pasaje dword 0d
mensaje1 db "Ingrese el numero de alumnos: ", 0
mensaje2 db "El costo del pasaje es de $", 0
mensaje3 db " por alumno", 0

.code
main500 PROC

    mov edx, OFFSET mensaje1 ;imprime el mensaje 
    call WriteString
    call ReadInt ;lee el número de alumnos
    mov num_alumnos, eax ;almacena el número de alumnos en la variable num_alumnos
    
    cmp num_alumnos, 100 ;si son más de 100 alumnos
    ja  grupo_grande

    cmp num_alumnos, 50 ;si son entre 50 y 100 alumnos
    jge grupo_mediano

    cmp num_alumnos, 20 ;si son entre 20 y 49 alumnos
    jge grupo_peq

    jmp grupo_chico ;si son menos de 20 alumnos
    
grupo_grande:
    mov costo_pasaje, 20 ;el costo es de $20 por alumno
    jmp imprimir_costo
    
grupo_mediano:
    mov costo_pasaje, 35 ;el costo es de $35 por alumno
    jmp imprimir_costo
    
grupo_peq:
    mov costo_pasaje, 40 ;el costo es de $40 por alumno
    jmp imprimir_costo
    
grupo_chico:
    mov eax, num_alumnos 
    mov ebx, 70
    mul ebx ;multiplica el número de alumnos por $70
    mov costo_pasaje, eax ;almacena el costo en la variable costo_pasaje
    jmp imprimir_costo
    
imprimir_costo:
    mov edx, OFFSET mensaje2 ;imprime el mensaje "El costo del pasaje es de $"
    call WriteString
    mov eax, costo_pasaje ;imprime el costo del pasaje
    call WriteInt
    mov edx, OFFSET mensaje3 ;imprime el mensaje " por alumno"
    call WriteString
    
    exit
main500 ENDP
END main500
