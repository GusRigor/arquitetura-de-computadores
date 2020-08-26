;---------------------------------------------------
; Programa: Multiplicação em assembly
; Autor: Gustavo G. Rigor
; Data:25/08/2020
;---------------------------------------------------

X EQU 240 ;Posição F0 é X
Y EQU 241 ;Posição F1 é Y

M EQU 242 ;Posição F2 é M maior num
N EQU 243 ;Posição F3 é N menor num

U EQU 244 ;Posição F4 é U iterador
F EQU 248 ;Posição F8 é F valor FF

V EQU 245 ;Posição F5 é V auxiliar
C EQU 246 ;Posição F6 é C centena
R EQU 247 ;Posição F7 é R resultado

ORG 0

LDA X ; Copia o conteúdo de X para o acumulador A
SUB Y ; Faz a diferença entre X e Y
JN MENOR ; O menor é o X
JMP MAIOR ; O menor é o Y

MENOR:
  LDA X ; Copia o conteúdo de X para o acumulador A
  STA N ; Copia de Acumulador(X) para N(menor)
  LDA Y ; Copia o conteúdo de Y para o acumulador A
  STA M ; Copia de Acumulador(Y) para M(maior)
  JMP COMECO ; manda o programa para a multiplicação

MAIOR:
  LDA Y ; Copia o conteúdo de Y para o acumulador A
  STA N ; Copia de Acumulador(Y) para N(menor)
  LDA X ; Copia o conteúdo de X para o acumulador A
  STA M ; Copia de Acumulador(X) para M(maior)
  JMP COMECO ; manda o programa para a multiplicação
 
COMECO:
  LDA N ; Copia o conteúdo de N (menor) para o acumulador A
  SUB V ; Faz a diferença entre N e V
  JN FIM ; Se menor, termina a multiplicação
  JZ FIM ; Se zero, termina a multiplicação

   ;Verificar se "vai um"
     LDA F ; Copia o conteúdo de R (resultado) para o acumulador A
     NOT
     ADD R ; Subtrai o valor FF do valor resultado
     ADD M ; Adiciona M (maior) Acc = (R-F)+M
     STA 129
     JN VaiUm
     JZ VaiUm

  ;Começa a multiplicação
   LDA M ; Copia o conteúdo de M (maior) para o acumulador A
   ADD R ; Soma R com o Acumulador A
   STA R ; Copia o acumulador A para R
   LDA V ; Incrementar V em 1
   ADD U
   STA V
   JMP COMECO ; Faz o loop para multiplicação
     
VaiUm:
     LDA C
     ADD U
     STA C
     LDA M ; Copia o conteúdo de M (maior) para o acumulador A
     ADD R ; Soma R com o Acumulador A
     STA R ; Copia o acumulador A para R
     LDA V ; Incrementar V em 1
     ADD U
     STA V
     JMP COMECO
  

FIM:
  LDA C ; Copia o conteúdo de C para o acumulador A
  OUT 0 ; Mostra no visor o valor do acumulador A
  LDA R ; Copia o conteúdo de R (resultado) para o acumulador A
  OUT 0 ; Mostra no visor o valor do acumulador A
  HLT ; Termina o programa
  