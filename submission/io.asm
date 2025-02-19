@ /000
        GD /000
        SB CONST
        MM X_D1
        GD /000
        GD /000
        SB CONST
        MM Y_D1
        LD X_D1
        AD Y_D1
        MM SUM
        LD /0F0B
        SB SUPA
        JN CONTIN
        LD SUM
        SB NORMA
        AD VAL
        MM SUM
        JP CONTIN





@ /300
CONTIN  LD SUM
        AD CONST
        PD /100
        HM /000



@ /F00
X_D1    K =0
X_D2    K =0
Y_D1    K =0
Y_D2    K =0
CONST   K /3030
SUM     K =0
        K /0
        K /0
SUPA    K /0A00
NORMA   K /000A
VAL     K /0100