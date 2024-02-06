/PROG  PRLOGMONOVER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 960;
CREATE		= DATE 13-02-22  TIME 08:15:00;
MODIFIED	= DATE 13-02-25  TIME 09:04:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1236;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL
/MN
   1:  !Process Logger Monitor ;
   2:  !Local Override ;
   3:  ! ;
   4:  !Calling prlogmon provides a ;
   5:  !one-shot override to a specific ;
   6:  !weld for a specific process ;
   7:  !monitor setting. ;
   8:  !Only 1 override can be active ;
   9:  !at a time. ;
  10:  ! ;
  11:  !There are 6 possible parameters ;
  12:  !The first 4 are required. ;
  13:  !The last 2 are optional. ;
  14:  ! ;
  15:  !PARM1=PROC_ID to apply ;
  16:  !              override to. ;
  17:  !PARM2=ENABLE/DISABLE  ;
  18:  !PARM3=Item Index from SETUP Menu ;
  19:  !PARM4=Sev. 1=W,2=F,3=iRW,4=iRF ;
  20:  !PARM5=Option Upp Lim (Direct) ;
  21:  !PARM6=Option Low Lim (Direct) ;
  22:  ! ;
  23:  !Fill in values for the 4-6 ;
  24:  !parameters below. ;
  25:  ! ;
  26:  CALL PRLOGMON(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6]) ;
/POS
/END
