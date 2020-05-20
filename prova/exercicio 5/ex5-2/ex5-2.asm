;---------------------------------------------------
; Programa:Zerando o ACC - 1
; Autor:Gustavo Gomes Rigor
; Data:20/05/2020
;---------------------------------------------------

G EQU 10 ;Endereço da variável G definido como 10
U EQU 9  ;Endereço da variável U definido como 9

ORG 0
LDA U ;acumulador A recebe conteúdo U
LDA G ;acumulador A recebe conteúdo G
STA 11
HLT