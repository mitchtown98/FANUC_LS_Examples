/PROG  _VISION_CB
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vision Routine";
PROG_SIZE	= 848;
CREATE		= DATE 22-11-26  TIME 16:26:22;
MODIFIED	= DATE 22-12-02  TIME 01:43:04;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1228;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL
/MN
   1:  !************************ ;
   2:  ! Vision  Sub  Routine    ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:   ;
   7:  !------------------------ ;
   8:  LBL[10:Start] ;
   9:  !------------------------ ;
  10:  R[80:numberFound]=0    ;
  11:   ;
  12:  VISION RUN_FIND '_ATOM_CB'    ;
  13:   ;
  14:  VISION GET_NFOUND '_ATOM_CB' R[80]    ;
  15:   ;
  16:  IF (R[80:numberFound]<>1),JMP LBL[998] ;
  17:   ;
  18:  VISION GET_OFFSET '_ATOM_CB' VR[1] JMP LBL[999] ;
  19:   ;
  20:  END ;
  21:   ;
  22:  !------------------------ ;
  23:  LBL[998:NotFoundError] ;
  24:  !------------------------ ;
  25:  MESSAGE[SwitchNotFound] ;
  26:  END ;
  27:   ;
  28:  !------------------------ ;
  29:  LBL[999:GetOffsetError] ;
  30:  !------------------------ ;
  31:  END ;
/POS
/END
