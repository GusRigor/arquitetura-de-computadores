;---------------------------------------------------
; Programa:Função de R
; Autor:Gustavo Gomes Rigor
; Data:20/05/2020
;---------------------------------------------------

X EQU 128 ;Endereço da variável X definido como 128
Y EQU 129 ;Endereço da variável Y definido como 129
R EQU 130 ;Endereço da variável R definido como 130
P EQU 131 ;Endereço da variável P definido como 131
U EQU 132 ;Endereço da variável U definido como 132
W EQU 133 ;Endereço da variável W definido como 133


ORG 0
LDA X ; acumulador Acc recebe conteúdo X
ADD Y ; conteúdo de Acc é adicionado do conteúdo de Y
STA R ; conteúdo é do Acc é recebido em R
LDA W ; acumulador Acc recebe conteúdo W
SUB P ; conteúdo de Acc é subtraido do conteúdo de P
ADD R ; conteúdo de Acc é adicionado do conteúdo de R
SUB U ; conteúdo de Acc é subtraido do conteúdo de U
STA R ; conteúdo é do Acc é recebido em R
HLT