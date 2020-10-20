;---------------------------------------------------
; Programa: Input Output
; Autor: Gustavo G. Rigor
; Data: 19/10/2020
;---------------------------------------------------
G EQU 16 ;Endereço da variável G definido como 16

ORG 0

LOOP:
IN 0  ;Entrada de dados para o acumulador A
STA G ;Conteúdo de A salvo em G
OUT 0 ;conteúdo de A é apresentado no output
JMP LOOP ;retorna para o começo
