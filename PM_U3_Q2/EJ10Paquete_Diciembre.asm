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
mensaje db "Ingrese la cantidad de dinero que recibira en diciembre: ", 0
paqueteA db "Tiene que comprar el Paquete A.", 0
paqueteB db "Tiene que comprar el Paquete B.", 0
paqueteC db "Tiene que comprar el Paquete C.", 0
paqueteD db "Tiene que comprar el Paquete D.", 0

.code
main505 PROC
    mov edx, OFFSET mensaje ; muestra mensaje
    call WriteString
    
    call ReadInt ; lee la cantidad de dinero
    cmp eax, 50000 ; compara con 50,000
    jge Pqta ; si es mayor o igual, muestra paquete A

    cmp eax, 20000 ; compara con 20,000
    jge Pqtb ; si es mayor o igual, muestra paquete B

    cmp eax, 10000 ; compara con 10,000
    jge Pqtc ; si es mayor o igual, muestra paquete C
    
    ; la cantidad de dinero es menor que 10,000
    mov edx, OFFSET paqueteD
    call msgBox
    jmp fin
    
Pqta:
    mov edx, OFFSET paqueteA
    call msgbox
    jmp fin
    
Pqtb:
    mov edx, OFFSET paqueteB
    call msgbox
    jmp fin
    
Pqtc:
    mov edx, OFFSET paqueteC
    call msgbox
    
fin:
    call Crlf ; salto de línea
    exit
main505 ENDP
END main505