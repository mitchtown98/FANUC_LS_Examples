/PROG  MWAITSTRT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USED IN WAITZONE";
PROG_SIZE	= 800;
CREATE		= DATE 11-05-18  TIME 12:08:42;
MODIFIED	= DATE 11-06-16  TIME 17:17:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1072;
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
  SPOT : TRUE ; 
/MN
   1:  !This MACRO is called before ;
   2:  !WaitZone[] instruction ;
   3:   ;
   4:  !The input: ;
   5:  ! AR[1]: num of the following ;
   6:  !        parameters ;
   7:  ! AR[2]: this waiting Dev ID ;
   8:   ;
   9:  !INFO in WaitZone[] statement ;
  10:  ! AR[3]: 1st Dev ID ;
  11:  ! AR[4]: 1st SyncID in the ;
  12:  !        WaitZone[] ;
  13:   ;
  14:  ! AR[5]: 2nd Dev ID ;
  15:  ! AR[6]: 2nd SyncID in the ;
  16:  !        WaitZone[] ;
  17:   ;
  18:  ! AR[7]: 3rd Dev ID ;
  19:  ! AR[8]: 3rd SyncID in the ;
  20:  !        WaitZone[] ;
  21:   ;
  22:  ! AR[9]:  4th Dev ID ;
  23:  ! AR[10]: 4th SyncID in the ;
  24:  !        WaitZone[] ;
  25:   ;
/POS
/END
