
;<Program title>

jmp start

;data


;code
start: LDA 2000
       ADI 00H
       JPE ABC
       MVI A,0FFH
       STA 1001
       HLT
ABC: MVI A,00H
     STA 1001
     HLT

hlt
