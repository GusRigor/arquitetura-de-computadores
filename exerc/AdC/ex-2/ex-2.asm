;---------------------------------------------------
; Programa: Organizando um vetor
; Autor: Gustavo G. Rigor
; Data: 25/08/2020
;---------------------------------------------------

A EQU 192 ; Posição C0 é A
B EQU 193 ; Posição C1 é B
C EQU 194 ; Posição C2 é C
D EQU 195 ; Posição C3 é D
E EQU 196 ; Posição C4 é E
F EQU 197 ; Posição C5 é F
G EQU 198 ; Posição C6 é G
H EQU 199 ; Posição C7 é H
I EQU 200 ; Posição C8 é H
J EQU 201 ; Posição C9 é H
Z EQU 202 ; Posição CA é Z

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
  JN  AI ; se der negativo, A é maior q H
  LDA A
  STA Z
  LDA H
  STA A
  LDA Z
  STA H
AI:
  LDA A ; acumulador A recebe conteúdo A
  SUB I ; subtrai conteúdo do A por I
  JN  AJ ; se der negativo, A é maior q I
  LDA A
  STA Z
  LDA I
  STA A
  LDA Z
  STA I
AJ:
  LDA A ; acumulador A recebe conteúdo A
  SUB J ; subtrai conteúdo do A por J
  JN  BC ; se der negativo, A é maior q J
  LDA A
  STA Z
  LDA J
  STA A
  LDA Z
  STA J
BC:
  HLT
