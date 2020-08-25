;---------------------------------------------------
; Programa: Organizando um vetor
; Autor: Gustavo G. Rigor
; Data: 25/08/2020
;---------------------------------------------------

A EQU 160 ; Posição A0 é A
B EQU 161 ; Posição A1 é B
C EQU 162 ; Posição A2 é C
D EQU 163 ; Posição A3 é D
E EQU 164 ; Posição A4 é E
F EQU 165 ; Posição A5 é F
G EQU 166 ; Posição A6 é G
H EQU 167 ; Posição A7 é H
Z EQU 170 ; Posição A8 é Z

ORG 0

AB:
  LDA A ; acumulador A recebe conteúdo A
  SUB B ; subtrai conteúdo do A por B
  JN  AC ; se der negativo, A é maior q B
  LDA A
  STA Z
  LDA B
  STA A
  LDA Z
  STA B
AC:
  LDA A ; acumulador A recebe conteúdo A
  SUB C ; subtrai conteúdo do A por C
  JN  AD ; se der negativo, A é maior q D
  LDA A
  STA Z
  LDA C
  STA A
  LDA Z
  STA C
AD:
  LDA A ; acumulador A recebe conteúdo A
  SUB D ; subtrai conteúdo do A por D
  JN  AE ; se der negativo, A é maior q D
  LDA A
  STA Z
  LDA D
  STA A
  LDA Z
  STA D
AE:
  LDA A ; acumulador A recebe conteúdo A
  SUB E ; subtrai conteúdo do A por E
  JN  AF ; se der negativo, A é maior q E
  LDA A
  STA Z
  LDA E
  STA A
  LDA Z
  STA E
AF:
  LDA A ; acumulador A recebe conteúdo A
  SUB F ; subtrai conteúdo do A por F
  JN  AG ; se der negativo, A é maior q F
  LDA A
  STA Z
  LDA F
  STA A
  LDA Z
  STA F
AG:
  LDA A ; acumulador A recebe conteúdo A
  SUB G ; subtrai conteúdo do A por G
  JN  AH ; se der negativo, A é maior q G
  LDA A
  STA Z
  LDA G
  STA A
  LDA Z
  STA G
AH:
  LDA A ; acumulador A recebe conteúdo A
  SUB H ; subtrai conteúdo do A por H
  JN  BC ; se der negativo, A é maior q H
  LDA A
  STA Z
  LDA H
  STA A
  LDA Z
  STA H
BC:
  HLT
