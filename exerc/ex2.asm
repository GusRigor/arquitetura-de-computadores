;---------------------------------------------------
; Programa: Input e output
; Autor:Gustavo G. Rigor
; Data:10/05/2020
;---------------------------------------------------
X EQU 126
Y EQU 127
G EQU 128

ORG 0
IN  0
STA X
IN  0
STA Y
ADD X
STA G
OUT 0
HLT