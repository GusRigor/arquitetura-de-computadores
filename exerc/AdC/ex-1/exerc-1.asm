;---------------------------------------------------
; Programa: Soma dois números
; Autor: Gustavo G. Rigor
; Data:24/08/2020
;---------------------------------------------------
G EQU 32 ;Endereço da variável G definido como 32
U EQU 33 ;Endereço da variável U definido como 33
S EQU 34 ;Endereço da variável S definido como 34

ORG 0
IN 0 ;Entrada de dados para o acumulador A
STA G ;Conteúdo de A salvo em G
IN 0 ; Entrada de dados para o acumulador A
STA U ;Conteúdo de A salvo em U
ADD G ;Somando o conteúdo de A com G
STA S ;conteúdo de A é copiado para S
OUT 0 ;conteúdo de A é apresentado no output

HLT   ;processador para