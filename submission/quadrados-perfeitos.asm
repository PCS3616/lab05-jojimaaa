@ /000
JUMP     LD NMO
         ML TWO
         AD ONE
         AD TEMP
         MM TEMP
STORE    MM /104
         LD NMO
         AD ONE
         MM NMO
         SB SIXTHREE
         JZ EXIT
         LD STORE
         AD TWO
         MM STORE
         JP JUMP





@ /100
         K =0     ;0x100
         K =1     ;0x102



@ /F00
NMO      K =1     ;N minus ONE (n-1) = limite superior da somatoria
SIXTHREE K =63
ONE      K =1
TWO      K =2
TEMP     K =1
EXIT     HM /00F



;jump AC = NMO
;AC = 2xAC
;AC = AC+1
;AC = AC + TEMP
;TEMP = AC
;MEM[ADR] = AC
;AC = NMO
;AC = AC+1
;NMO = AC
;AC = AC-SIXTHREE
;if AC == 0 EXIT
;AC = ADR
;AC = AC +1
;AC = AC +1
;ADR = AC
;jump







