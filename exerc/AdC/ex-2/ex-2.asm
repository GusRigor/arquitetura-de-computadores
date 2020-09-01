;---------------------------------------------------
; Programa: Organizando um vetor
; Autor: Gustavo G. Rigor
; Data: 25/08/2020
;---------------------------------------------------

;Colocar os valores na posição E0 a E9

A EQU 224 ; Posição E0 é K
B EQU 225 ; Posição E1 é L
C EQU 226 ; Posição E2 é M
D EQU 227 ; Posição E3 é N
E EQU 228 ; Posição E4 é O
F EQU 229 ; Posição E5 é P
G EQU 230 ; Posição E6 é Q
H EQU 231 ; Posição E7 é R
I EQU 232 ; Posição E8 é S
J EQU 233 ; Posição E9 é T

X EQU 234 ; Posição EA é X



ORG 0
TESTAR:
  ;Verifica se A é menor q B
  LDA B ; acumulador Acc recebe conteúdo B
  SUB A ; subtrai conteúdo do Acc por A
  JN  TAB ; se der negativo, A é maior q B
 
  ;Verifica se B é menor q C
  LDA C ; acumulador Acc recebe conteúdo C
  SUB B ; subtrai conteúdo do Acc por B
  JN  TBC ; se der negativo, B é maior q C

  ;Verifica se C é menor q D
  LDA D ; acumulador Acc recebe conteúdo D
  SUB C ; subtrai conteúdo do C por C
  JN  TCD ; se der negativo, C é maior q D

  ;Verifica se D é menor q E
  LDA E ; acumulador Acc recebe conteúdo E
  SUB D ; subtrai conteúdo do Acc por D
  JN  TDE ; se der negativo, D é maior q E

  ;Verifica se E é menor q F
  LDA F ; acumulador Acc recebe conteúdo F
  SUB E ; subtrai conteúdo do Acc por E
  JN  TEF ; se der negativo, E é maior q F

  ;Verifica se F é menor q G
  LDA G ; acumulador Acc recebe conteúdo G
  SUB F ; subtrai conteúdo do Acc por F
  JN  TFG ; se der negativo, F é maior q G

  ;Verifica se G é menor q H
  LDA H ; acumulador Acc recebe conteúdo H
  SUB G ; subtrai conteúdo do Acc por G
  JN  TGH ; se der negativo, G é maior q H

  ;Verifica se H é menor q I
  LDA I ; acumulador Acc recebe conteúdo I
  SUB H ; subtrai conteúdo do Acc por H
  JN  THI ; se der negativo, H é maior q I

  ;Verifica se I é menor q J
  LDA J ; acumulador Acc recebe conteúdo J
  SUB I ; subtrai conteúdo do Acc por I
  JN  TIJ ; se der negativo, I é maior q J
  JMP FIM ; Termina programa

TAB: ; Troca o valor de A com B, usando auxiliar X
  LDA A ;acumulador Acc recebe conteúdo A
  STA X ;Posição X recebe conteúdo de Acc
  LDA B ;acumulador Acc recebe conteúdo B
  STA A ;Posição A recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo A
  STA B ;Posição B recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função de verificar posição

TBC: ; Troca o valor de B com C, usando auxiliar X
  LDA B ;acumulador Acc recebe conteúdo B
  STA X ;Posição X recebe conteúdo de Acc
  LDA C ;acumulador Acc recebe conteúdo C
  STA B ;Posição B recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo B
  STA C ;Posição C recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TCD: ; Troca o valor de C com D, usando auxiliar X
  LDA C ;acumulador Acc recebe conteúdo C
  STA X ;Posição X recebe conteúdo de Acc
  LDA D ;acumulador Acc recebe conteúdo D
  STA C ;Posição C recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo C
  STA D ;Posição D recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição


TDE: ; Troca o valor de D com E, usando auxiliar X
  LDA D ;acumulador Acc recebe conteúdo D
  STA X ;Posição X recebe conteúdo de Acc
  LDA E ;acumulador Acc recebe conteúdo E
  STA D ;Posição D recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo D
  STA E ;Posição E recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TEF: ; Troca o valor de E com F, usando auxiliar X
  LDA E ;acumulador Acc recebe conteúdo E
  STA X ;Posição X recebe conteúdo de Acc
  LDA F ;acumulador Acc recebe conteúdo F
  STA E ;Posição E recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo E
  STA F ;Posição F recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TFG: ; Troca o valor de F com G, usando auxiliar X
  LDA F ;acumulador Acc recebe conteúdo F
  STA X ;Posição X recebe conteúdo de Acc
  LDA G ;acumulador Acc recebe conteúdo G
  STA F ;Posição F recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo F
  STA G ;Posição G recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TGH: ; Troca o valor de G com H, usando auxiliar X
  LDA G ;acumulador Acc recebe conteúdo G
  STA X ;Posição X recebe conteúdo de Acc
  LDA H ;acumulador Acc recebe conteúdo H
  STA G ;Posição G recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo G
  STA H ;Posição H recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

THI: ; Troca o valor de H com I, usando auxiliar X
  LDA H ;acumulador Acc recebe conteúdo H
  STA X ;Posição X recebe conteúdo de Acc
  LDA I ;acumulador Acc recebe conteúdo I
  STA H ;Posição H recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo H
  STA I ;Posição I recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TIJ: ; Troca o valor de I com J, usando auxiliar X
  LDA I ;acumulador Acc recebe conteúdo I
  STA X ;Posição X recebe conteúdo de Acc
  LDA J ;acumulador Acc recebe conteúdo J
  STA I ;Posição I recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo I
  STA J ;Posição J recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

FIM:
  HLT
