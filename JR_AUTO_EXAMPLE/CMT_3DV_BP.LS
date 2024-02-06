/PROG  CMT_3DV_BP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Comment R & PR";
PROG_SIZE	= 748;
CREATE		= DATE 20-03-03  TIME 12:53:40;
MODIFIED	= DATE 20-03-03  TIME 12:53:40;
FILE_NAME	= CMT_3DV_;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1056;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL
/MN
   1:  !BPCMTSM.PC enters comments into ;
   2:  !registers (R) and position ;
   3:  !registers (PR) used in ;
   4:  !V_3DV_BP.TP. ;
   5:   ;
   6:  !Arg.1:Start index number of R ;
   7:  !      (4 comments are entered ;
   8:  !      into R in serial number.) ;
   9:  !Arg.2:Start index number of PR ;
  10:  !      (4 comments are entered ;
  11:  !      into PR in serial number.) ;
  12:   ;
  13:  !4th PR number should be set on ;
  14:  !the number of Tofs on Approach ;
  15:  !Setup in PICK Position List ;
  16:  !in PARTS LIST MANAGER. ;
  17:   ;
  18:  CALL BPCMTSM(10,20) ;
/POS
/END
