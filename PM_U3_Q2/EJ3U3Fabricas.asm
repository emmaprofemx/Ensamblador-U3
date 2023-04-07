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
TITULO DB 'Calculadora de precios de venta de articulos',0
INGRESE_CLAVE DB 'Ingrese la clave del articulo (1, 2, 3, 4, 5 o 6): ',0
INGRESE_MP DB 'Ingrese el costo de la materia prima: ',0
PRECIO_VENTA DB 'El precio de venta del articulo es: ',0
materia_prima dword 0d
clave dword 0d
mano_obra dword 0d
gastos_fabricacion dword 0d
precio_final dword 0d
.code
	mainej3 PROC
		;Lógica del Programa	 
		; Imprimir el título
    mov edx, OFFSET TITULO
    call WriteString
    call Crlf

    ; Pedir la clave del artículo
    println "Ingrese la clave del articulo (1, 2, 3, 4, 5 o 6): "
    call ReadInt
    mov clave, eax

    ; Pedir el costo de la materia prima
    println "Ingrese el costo de la materia prima:$ "
    call ReadInt
    mov materia_prima, eax

    ; Calcular el costo de la mano de obra
    cmp clave, 3
    je mano_obra_20_por_ciento
    cmp clave, 4
    je mano_obra_20_por_ciento
    cmp clave, 1
    je mano_obra_40_por_ciento
    cmp clave, 5
    je mano_obra_40_por_ciento
    cmp clave, 2
    je mano_obra_60_por_ciento
    cmp clave, 6
    je mano_obra_60_por_ciento

mano_obra_20_por_ciento:
    mov eax, materia_prima
    mov ecx,20
    mul ecx
    mov ebx, 100
    div ebx
    mov mano_obra, eax
    jmp gasto_fabricacion

mano_obra_40_por_ciento:
    mov eax, materia_prima
    mov ecx,40
    mul ecx
    mov ebx, 100
    div ebx
    mov mano_obra, eax
    jmp gasto_fabricacion

mano_obra_60_por_ciento:
    mov eax, materia_prima
    mov ecx,60
    mul ecx
    mov ebx, 100
    div ebx
    mov mano_obra, eax
    jmp gasto_fabricacion
   
   ; Calcular el gasto de fabricación

gasto_fabricacion:
cmp clave, 2
je gastos_fabricacion_10_por_ciento
cmp clave, 5
je gastos_fabricacion_10_por_ciento
cmp clave, 3
je gastos_fabricacion_20_por_ciento
cmp clave, 6
je gastos_fabricacion_20_por_ciento
cmp clave, 1
je gastos_fabricacion_40_por_ciento
cmp clave, 4
je gastos_fabricacion_40_por_ciento

gastos_fabricacion_10_por_ciento:
mov eax, materia_prima
mov ecx,10
mul ecx
mov ebx, 100
div ebx
mov gastos_fabricacion, eax
jmp calcular_precio_venta

gastos_fabricacion_20_por_ciento:
mov eax, materia_prima
mov ecx,20
mul ecx
mov ebx, 100
div ebx
mov gastos_fabricacion, eax
jmp calcular_precio_venta

gastos_fabricacion_40_por_ciento:
mov eax, materia_prima
mov ecx,40
mul ecx
mov ebx, 100
div ebx
mov gastos_fabricacion, eax

; Calcular el precio de venta
calcular_precio_venta:
mov eax, materia_prima
add eax, mano_obra
add eax, gastos_fabricacion
mov precio_final,eax

mov ecx,10
mul ecx
mov ebx, 100
div ebx

add eax, precio_final ; suma el 10% al costo de produccion



;Imprimir el precio de venta
println "El precio de venta del articulo es:$ "
call Writedec
call Crlf



		exit

	mainej3 ENDP
	
	END mainej3

