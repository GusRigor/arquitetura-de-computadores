;---------------------------------------------------
; Programa:Soma de 10 números
; Autor:Gustavo Gomes Rigor
; Data:20/05/2020
;---------------------------------------------------

Z EQU 32 ;Endereço da variável A definido como 32
B EQU 33 ;Endereço da variável B definido como 33
C EQU 34 ;Endereço da variável C definido como 34
D EQU 35 ;Endereço da variável D definido como 35
E EQU 36 ;Endereço da variável E definido como 36
F EQU 37 ;Endereço da variável F definido como 37
G EQU 38 ;Endereço da variável G definido como 38
H EQU 39 ;Endereço da variável H definido como 39
I EQU 40 ;Endereço da variável I definido como 40
J EQU 41 ;Endereço da variável J definido como 41
K EQU 42 ;Endereço da variável K definido como 42

ORG 0
LDA Z ;acumulador Acc recebe conteúdo Z
ADD B ; conteúdo de Acc é adicionado do conteúdo de B
ADD C ; conteúdo de Acc é adicionado do conteúdo de C
ADD D ; conteúdo de Acc é adicionado do conteúdo de D
ADD E ; conteúdo de Acc é adicionado do conteúdo de E
ADD F ; conteúdo de Acc é adicionado do conteúdo de F
ADD G ; conteúdo de Acc é adicionado do conteúdo de G
ADD H ; conteúdo de Acc é adicionado do conteúdo de H
ADD I ; conteúdo de Acc é adicionado do conteúdo de I
ADD J ; conteúdo de Acc é adicionado do conteúdo de J
STA K ; conteúdo é do Acc é recebido em K
HLT