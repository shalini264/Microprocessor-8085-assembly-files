
;<Program title>

jmp start

;data


;code
start: LXI H,0FFFFH
       MOV A,H
       ANI 00H
       CZ CHECK
       MVI B,00H
       MVI C,02H
       MVI D,00H
       MVI E,08H
       
     MOV A,H
LOOP: RLC
      MOV H,A
      CC FLAG
      CNC FLAG1
       DCR E
       MOV A,H
       JNZ LOOP
       JZ EXIT
FLAG: INR B
      ret
FLAG1: MOV A,B
       CPI 02H
       CNC BACK
       CC BACK1
       RET
BACK: INR D
      MVI B,00H
      ret
BACK1: MVI B,00H
       ret
EXIT: DCR C
      JZ OUT
      MOV A,L
      JNZ LOOP
OUT: CPI 10H
     JZ NEW
     HLT
NEW: MVI D,01H
     HLT
CHECK: Mov A,L
      ANI 00H
      JZ NEW
      ret
      
      MVI D,01H
      HLT
      
