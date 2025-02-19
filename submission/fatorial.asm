@ /000
        LD N       ;Carrega para AC o valor inicial N
        JZ JUMP1   ;if N==0 jump para 0x300
        MM RES     ;RES = N
        SB ONE     ;AC = N-1
        JZ JUMP1   ;if N==1 jump para 0x300
        SC FAC     ;chama rotina de fatorial
        HM =0      ;fim


@ /100
;0x100 esta reservado para o N
N       K =0
RES     K =0


@ /200
FAC     K =0
        MM VAR     ;VAR = N-1
;loop começa aqui
LOOP    LD RES     ;AC = res
        ML VAR     ;AC *= VAR
        MM RES     ;RES = RES*VAR
        LD VAR     ;AC = VAR
        SB ONE     ;AC--
        JZ RET     ;if(VAR-1 == 0) return
        MM VAR     ;VAR = VAR-1
        JP LOOP    ;volta pro loop
RET     RS FAC     ;return


@ /300
JUMP1   LV =1     ;Carrega 1 no AC
        MM RES     ;Armazena o resultado
        HM =0


@ /0F00
ONE     K =1
VAR     K =0
