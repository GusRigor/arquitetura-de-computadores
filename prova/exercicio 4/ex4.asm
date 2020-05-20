;---------------------------------------------------
; Programa: prova ex4: Maior ou menor
; Autor:Gustavo Gomes Rigor
; Data: 19/05/2020
;---------------------------------------------------

G EQU 128 ;Endereço da variável G definido como 128
U EQU 129 ;Endereço da variável U definido como 129
S EQU 130 ;Endereço da variável S definido como 130

ORG 0
LDA G ;acumulador A recebe conteúdo G
SUB U ;conteúdo de A é subtraido do conteúdo de U
JN  11 ;se o conteúdo de A for negativo 
LDA G
STA S
HLT
LDA U
STA S
HLT