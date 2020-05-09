;---------------------------------------------------
; Programa: Soma 5
; Autor: Gustavo G. Rigor
; Data:09/05/2020
;---------------------------------------------------
G EQU 160 ;Endereço da variável G definido como 160
U EQU 161 ;Endereço da variável U definido como 161
S EQU 162 ;Endereço da variável S definido como 162
T EQU 163 ;Endereço da variável T definido como 163
A EQU 164 ;Endereço da variável A definido como 164
V EQU 165 ;Endereço da variável V definido como 165 

ORG 0
LDA G ;acumulador A recebe conteúdo G
ADD U ;conteúdo de A é somado ao conteúdo de U
ADD S ;conteúdo de A é somado ao conteúdo de S
ADD T ;conteúdo de A é somado ao conteúdo de T
ADD A ;conteúdo de A é somado ao conteúdo de A
STA V ;conteúdo de A é copiado para V
OUT 0 ;conteúdo de A é apresentado no output

HLT   ;processador para
