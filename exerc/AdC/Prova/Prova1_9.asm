;---------------------------------------------------
; Programa: Organizando um vetor
; Autor: Gustavo G. Rigor
; Data: 28/09/2020
;---------------------------------------------------

;Colocar os valores na posição E0 a EE

A EQU 224 ; Posição E0 é A
B EQU 225 ; Posição E1 é B
C EQU 226 ; Posição E2 é C
D EQU 227 ; Posição E3 é D
E EQU 228 ; Posição E4 é E
F EQU 229 ; Posição E5 é F
G EQU 230 ; Posição E6 é G
H EQU 231 ; Posição E7 é H
I EQU 232 ; Posição E8 é I
J EQU 233 ; Posição E9 é J
K EQU 234 ; Posição EA é K
L EQU 235 ; Posição EB é L
M EQU 236 ; Posição EC é M
N EQU 237 ; Posição ED é N
O EQU 235 ; Posição EE é O

X EQU 236 ; Posição EF é X



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

  ;Verifica se J é menor q K
  LDA K ; acumulador Acc recebe conteúdo K
  SUB J ; subtrai conteúdo do Acc por J
  JN  TJK ; se der negativo, J é maior q K
  
  ;Verifica se K é menor q L
  LDA L ; acumulador Acc recebe conteúdo L
  SUB K ; subtrai conteúdo do Acc por K
  JN  TKL ; se der negativo, K é maior q L

  ;Verifica se L é menor q M
  LDA M ; acumulador Acc recebe conteúdo M
  SUB L ; subtrai conteúdo do Acc por L
  JN  TLM ; se der negativo, L é maior q M

  ;Verifica se M é menor q N
  LDA N ; acumulador Acc recebe conteúdo N
  SUB M ; subtrai conteúdo do Acc por M
  JN  TMN ; se der negativo, M é maior q N

  ;Verifica se N é menor q O
  LDA O ; acumulador Acc recebe conteúdo O
  SUB N ; subtrai conteúdo do Acc por N
  JN  TNO ; se der negativo, N é maior q O
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

TJK: ; Troca o valor de J com K, usando auxiliar X
  LDA J ;acumulador Acc recebe conteúdo K
  STA X ;Posição X recebe conteúdo de Acc
  LDA K ;acumulador Acc recebe conteúdo 
  STA J ;Posição J recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo J
  STA K ;Posição J recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função verificar posição

TKL: ; Troca o valor de K com L, usando auxiliar X
  LDA K ;acumulador Acc recebe conteúdo K
  STA X ;Posição X recebe conteúdo de Acc
  LDA L ;acumulador Acc recebe conteúdo L
  STA K ;Posição A recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo K
  STA L ;Posição L recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função de verificar posição

TLM: ; Troca o valor de L com M, usando auxiliar X
  LDA L ;acumulador Acc recebe conteúdo L
  STA X ;Posição X recebe conteúdo de Acc
  LDA M ;acumulador Acc recebe conteúdo M
  STA L ;Posição L recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo L
  STA M ;Posição M recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função de verificar posição

TMN: ; Troca o valor de M com N, usando auxiliar X
  LDA M ;acumulador Acc recebe conteúdo M
  STA X ;Posição X recebe conteúdo de Acc
  LDA N ;acumulador Acc recebe conteúdo N
  STA M ;Posição M recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo M
  STA N ;Posição N recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função de verificar posição

TNO: ; Troca o valor de N com O, usando auxiliar X
  LDA N ;acumulador Acc recebe conteúdo N
  STA X ;Posição X recebe conteúdo de Acc
  LDA O ;acumulador Acc recebe conteúdo O
  STA N ;Posição N recebe conteúdo de Acc
  LDA X ;acumulador Acc recebe conteúdo N
  STA O ;Posição O recebe conteúdo de Acc
  JMP TESTAR ;Retorna para a função de verificar posição

FIM:
  HLT
