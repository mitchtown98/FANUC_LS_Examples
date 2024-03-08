/PROG  PROGRAM_TEMPLATE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1317;
CREATE		= DATE 23-07-28  TIME 11:15:52;
MODIFIED	= DATE 23-07-28  TIME 13:26:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1685;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  --eg:PROGRAM IS A TEMPLATE THAT CAN BE USED TO CREATE A NEW PROCESS ON
    :  THE RC. PROGRAM MAY INCLUDE MORE THAN SHOWN. IT IS AN EXAMPLE OF WHAT
    :  THE PROGRAM COULD LOOK LIKE.        ;
   2:  --eg:TOP OF PROGRAM GIVES EXPLANATION OF PROGRAM. ;
   3:  --eg:MOVE TO PERCH POSITION ;
   4:J PR[...] 100% FINE    ;
   5:  R[40:RECOVER START PR]=Constant    ;
   6:  --eg:SET USER FRAME ;
   7:  UFRAME_NUM=Constant ;
   8:  --eg:SET TOOL FRAME ;
   9:  UTOOL_NUM=Constant ;
  10:   ;
  11:  --eg:CHECK NEW PROCESS IS READY. EXAMPLE FOR REGRIP: CHECK REGRIP IS
    :  CLEAR AND READY FOR PART ;
  12:  --eg:DETERMINE IF ROBOT NEEDS TO PICK, PLACE OR PICK AND PLACE NEW
    :  PROCESS ;
  13:  --eg:ADD APPROPRATE IF STATEMENT LOGIC AND LABELS IF ROBOT CAN PERFORM
    :  BOTH A PICK AND PLACE ;
  14:   ;
  15:  --eg:MOVE TO APPROACH POSITION ;
  16:J PR[...] 100% FINE    ;
  17:  R[40:RECOVER START PR]=Constant    ;
  18:   ;
  19:  --eg:MOVE TO POSITION ;
  20:L PR[...] 2000mm/sec FINE    ;
  21:  R[40:RECOVER START PR]=Constant    ;
  22:   ;
  23:  --eg:GRIP OR RELEASE TOOL. BASED ON IF PROGRAM IS PICKING OR PLACING ;
  24:   ;
  25:  --eg:TURN ON PART TRACKING ID IF PICKING.  TURN OFF PART TRACKING ID IF
    :  PLACING ;
  26:   ;
  27:  --eg:MOVE TO EXIT POSITION ;
  28:  R[40:RECOVER START PR]=Constant    ;
  29:L PR[...] 2000mm/sec FINE    ;
  30:   ;
  31:  --eg:MOVE TO PERCH POSITION ;
  32:  R[40:RECOVER START PR]=Constant    ;
  33:J PR[...] 100% FINE    ;
/POS
/END