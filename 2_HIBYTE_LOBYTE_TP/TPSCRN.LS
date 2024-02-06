SRVO-419 PROFIsafe comm. error 1,1                                              
_BG_MAIN          LINE 0    AUTO ABORTED\\\\\\\\\\\JOINT\\\\\\                  
_BG_MAIN\\\\\\\\\\\\\\\\\\\\\\       0i0                                        
                                   1/16                                         
\\\1:  $mcr_grp[1].$prgoverride=                                                
    :  R[1:PrgOvr]                                                              
   2:                                                                           
   3:  R[10:Hi]=(GI[1:HiPos1]-(                                                 
    :  GI[1:HiPos1] DIV 32768)*65536)                                           
   4:                                                                           
   5:  R[11:Lo]=(GI[2:LoPOS1]-(                                                 
    :  GI[2:LoPOS1] DIV 32768)*65536)                                           
   6:                                                                           
   7:  R[12]=(GI[3:HiPOS2]-(                                                    
    :  GI[3:HiPOS2] DIV 32768)*65536)                                           
   8:                                                                           
   9:  R[13]=(GI[4:LoPOS2]-(                                                    
    :  GI[4:LoPOS2] DIV 32768)*65536)                                           
  10:                                                                           
  11:                                                                           
  12:                                                                           
  13:                                                                           
  14:                                                                           
  15:                                                                           
[End]                                                                           
                                                                                
*S*9198402                      [EDCMD]                                         
