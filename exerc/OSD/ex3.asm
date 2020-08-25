;---------------------------------------------------
; Programa:Teste de programa
; Autor:Gustao G Rigor
; Data:10/05/2020
;---------------------------------------------------
ORG 128
A: DB 85
ORG 136
B: DB 51
ORG 00
LDA A
STA 129
LDA B
STA A
LDA 129
STA B
HLT