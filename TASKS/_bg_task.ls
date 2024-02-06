/PROG  _BG_TASK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Task";
PROG_SIZE	= 132;
CREATE		= DATE 23-08-14  TIME 13:10:52;
MODIFIED	= DATE 23-08-14  TIME 13:10:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 0;
MEMORY_SIZE	= 376;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/MN
1: !------------------------;
2: !  Back Ground Task      ;
3: !------------------------;
4: ;
4: !******** ;
4: LBL[1:Loop] ;
4: !******** ; 
4: ; 
4: WAIT   2.00(sec) ;
5:;
5: IF R[98:KillTask]=1,JMP LBL[100] ;
5: IF R[99:RunTask]<>1,JMP LBL[1] ;
6: ;
6: !-----Start Work Here----- ;
6:;
6:  R[96:TaskCnt]=R[96:TaskCnt]+1 ;
6:;
6: !------End Work Here ----- ;
6: ;
6: IF R[98:KillTask]<>1,JMP LBL[1] ;
6: JMP LBL[100] ;
6: ;
6: ;
6: !********;
6: LBL[100:Kill] ;
6: !********;
6: ;
6: R[96:TaskCnt]=0 ;
6: R[98:KillTask]=0 ;
6: R[99:RunTask]=0 ;
6: JMP LBL[1] ;
/POS
/END
