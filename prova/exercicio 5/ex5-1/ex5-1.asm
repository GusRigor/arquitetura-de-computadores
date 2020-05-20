;---------------------------------------------------
; Programa:Zerando o ACC
; Autor:Gustavo Gomes Rigor
; Data:20/05/2020
;---------------------------------------------------

G EQU 10 ;Endereço da variável G definido como 128

ORG 0
LDA G ;acumulador A recebe conteúdo G
SUB G ;conteúdo de A é subtraido do conteúdo de G
HLT