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
numero_focos db "Ingrese cuantos focos quiere: ",0
focos db "Ingrese el color del foco (1: verde, 2: blanco, 3: rojo): ",0
cantidad_focos_verdes db "Cantidad de focos verdes: ",0
cantidad_focos_blanco db "Cantidad de focos blancos: ",0
cantidad_focos_rojo db "Cantidad de focos rojos: ",0
total_focos db "total de focos: ",0

verde dword 0d
blanco dword 0d
rojo dword 0d
total dword 0d

.code
main504 PROC
    mov edx, OFFSET numero_focos
    call writestring
    call readint ;lee la cantidad de focos en el lote
    mov ecx, eax ;inicializa el contador del ciclo

    ciclo:
        mov edx, OFFSET focos
        call writestring ;imprime el mensaje "Ingrese el color del foco (1: verde, 2: blanco, 3: rojo):"
        call readint ;lee el color del foco

        cmp eax, 1 ;verifica si es verde
        je focos_verdes
        cmp eax, 2 ;verifica si es blanco
        je focos_blancos
        cmp eax, 3 ;verifica si es rojo
        je focos_rojos
        jmp ciclo ;si el color es inválido, vuelve a pedir el color del foco

    focos_verdes:
        add verde, 1 ;incrementa el contador de focos verdes
        jmp fin_foco

    focos_blancos:
        add blanco, 1 ;incrementa el contador de focos blancos
        jmp fin_foco

    focos_rojos:
        add rojo, 1 ;incrementa el contador de focos rojos
        jmp fin_foco

    fin_foco:
        add total, 1 ;incrementa el contador total de focos
        loop ciclo ;repite el ciclo mientras no se hayan leído los colores de todos los focos

    
   
    mov edx, OFFSET cantidad_focos_verdes
    call writestring
    mov eax, verde
    call writeint ;imprime el número de focos verdes
    call crlf
  
   mov edx, OFFSET cantidad_focos_blanco
    call writestring
    mov eax, blanco
    call writeint ;imprime el número de focos blancos
    call crlf

    mov edx, OFFSET cantidad_focos_rojo
    call writestring
    mov eax, rojo
    call writeint ;imprime el número de focos rojos
    call crlf

    mov edx, OFFSET total_focos
    call writestring
    mov eax, total
    call Writeint ;imprime el total de focos contabilizados

    exit
main504 ENDP
END main504