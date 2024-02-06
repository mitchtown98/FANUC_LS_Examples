/PROG 	TEST
/ATTR
OWNER        = MNEDITOR;
COMMENT      = 'Testing';
PROG_SIZE    = 500;
CREATE       = DATE 23-08-14 TIME 16:42:07;
MODIFIED     = DATE 23-08-14 TIME 16:42:07;
FILE_NAME    = ;
VERSION      = 0;
LINE_COUNT   = 25;
MEMORY_SIZE  = 1012;
PROTECT      = READ_WRITE;
TCD:  STACK_SIZE   = 0,
      TASK_PRIORITY = 50,
      TIME_SLICE    = 0,
      BUSY_LAMP_OFF = 0,
      ABORT_REQUEST = 0
      PAUSE_REQUEST = 0;
DEFAULT_GROUP = 1,*,*,*,*;
CONTROL_CODE  = 00000000 00000000; 
LOCAL_REGISTERS = 0,0,0; 
/MN
 1:  !------------------------;
 2:  !    Test Comment        ;
 3:  !------------------------;
 4:  ;
 5:  !********;
 6:  LBL[10:Start];
 7:  !********;
 8:  ;
 9:  ;
 1:  !********** ;
 2:  LBL[1:Genme] ;
 3:  !********** ;
 10:  ;
 11:  ;
 12:  ;
 13:  ;
 14:  ;
 15: !********;
 16: LBL[999:Error];
 17: !********;
 18: ;
 19: END;
 20: ;
 21: !------------------------;
 22: !  Local P Touchups;
 23: !------------------------;
 24: ;
 25: ;
/POS
/END