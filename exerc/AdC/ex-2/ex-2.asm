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
I EQU 200 ; Posição C8 é I
J EQU 201 ; Posição C9 é J

X EQU 202 ; Posição CA é X
Y EQU 203 ; Posição CB é Y

ORG 0
AB:
  LDA B ; acumulador A recebe conteúdo B
  STA Y ; Copiando acumulador A para Y
  SUB A ; subtrai conteúdo do A por B
  JN TA ; se der negativo, A é maior q B
  JN TB ; se der negativo, A é maior q B 
  LDA A
  STA X
  LDA B
  STA A
  LDA X
  STA B
AC:
  LDA A ; acumulador A recebe conteúdo A
  SUB C ; subtrai conteúdo do A por C
  JN  BC ; se der negativo, A é maior q D
  LDA A
  STA X
  LDA C
  STA A
  LDA X
  STA C

TA: ; Troca o valor no auxiliar Y para A
  LDA A
  STA X
  LDA Y
  STA A
  LDA X
  STA Y ; Ficando Y com o conteúdo de A

TB:  ; Troca o valor no auxiliar Y para B
  LDA B
  STA X
  LDA Y
  STA B
  LDA X
  STA Y ; Ficando Y com o conteúdo de B

TC:  ; Troca o valor no auxiliar Y para C
  LDA C
  STA X
  LDA Y
  STA C
  LDA X
  STA Y ; Ficando Y com o conteúdo de C

TD:  ; Troca o valor no auxiliar Y para D
  LDA D
  STA X
  LDA Y
  STA D
  LDA X
  STA Y ; Ficando Y com o conteúdo de D

TE:  ; Troca o valor no auxiliar Y para E
  LDA E
  STA X
  LDA Y
  STA E
  LDA X
  STA Y ; Ficando Y com o conteúdo de E

TF:  ; Troca o valor no auxiliar Y para F
  LDA F
  STA X
  LDA Y
  STA F
  LDA X
  STA Y ; Ficando Y com o conteúdo de F

TG:  ; Troca o valor no auxiliar Y para G
  LDA G
  STA X
  LDA Y
  STA G
  LDA X
  STA Y ; Ficando Y com o conteúdo de G

TH:  ; Troca o valor no auxiliar Y para H
  LDA H
  STA X
  LDA Y
  STA H
  LDA X
  STA Y ; Ficando Y com o conteúdo de H

TI:  ; Troca o valor no auxiliar Y para I
  LDA I
  STA X
  LDA Y
  STA I
  LDA X
  STA Y ; Ficando Y com o conteúdo de I

TJ:  ; Troca o valor no auxiliar Y para J
  LDA J
  STA X
  LDA Y
  STA J
  LDA X
  STA Y ; Ficando Y com o conteúdo de J

BC:
  HLT
