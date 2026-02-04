ORG 0000H
    MOV A, 50H        
    MOV B, 51H        

    
    CLR C
    SUBB A, B         

    JZ EQUAL          
    JC LESS           

GREATER:
    MOV 52H, #01H     
    SJMP END_PROG

LESS:
    MOV 52H, #0FFH    
    SJMP END_PROG

EQUAL:
    MOV 52H, #00H     

END_PROG:
    END