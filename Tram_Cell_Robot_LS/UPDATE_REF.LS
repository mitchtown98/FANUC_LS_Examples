/PROG  UPDATE_REF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SET REFERENCES";
PROG_SIZE	= 4051;
CREATE		= DATE 11-08-01  TIME 16:31:48;
MODIFIED	= DATE 18-01-18  TIME 00:57:30;
FILE_NAME	= INCONV1_;
VERSION		= 0;
LINE_COUNT	= 133;
MEMORY_SIZE	= 4887;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !THIS PROGRAM IS USED TO ;
   2:  !LOAD POSITION REGISTER DATA ;
   3:  !INTO REFERENCE POSITIONS ;
   4:   ;
   5:  LBL[1:PR 1] ;
   6:  R[50]=PR[1,1:HOME]    ;
   7:  R[51]=PR[1,2:HOME]    ;
   8:  R[52]=PR[1,3:HOME]    ;
   9:  R[53]=PR[1,4:HOME]    ;
  10:  R[54]=PR[1,5:HOME]    ;
  11:  R[55]=PR[1,6:HOME]    ;
  12:  R[56]=PR[1,7:HOME]    ;
  13:  R[50]=R[50]/57.296    ;
  14:  R[51]=R[51]/57.296    ;
  15:  R[52]=R[52]/57.296    ;
  16:  R[53]=R[53]/57.296    ;
  17:  R[54]=R[54]/57.296    ;
  18:  R[55]=R[55]/57.296    ;
  19:  $REFPOS1[1].$PERCHPOS[1]=R[50] ;
  20:  $REFPOS1[1].$PERCHPOS[2]=R[51] ;
  21:  $REFPOS1[1].$PERCHPOS[3]=R[52] ;
  22:  $REFPOS1[1].$PERCHPOS[4]=R[53] ;
  23:  $REFPOS1[1].$PERCHPOS[5]=R[54] ;
  24:  $REFPOS1[1].$PERCHPOS[6]=R[55] ;
  25:  $REFPOS1[1].$PERCHPOS[7]=R[56] ;
  26:   ;
  27:  LBL[2:PR 2] ;
  28:  R[50]=PR[2,1:MAINTENANCE]    ;
  29:  R[51]=PR[2,2:MAINTENANCE]    ;
  30:  R[52]=PR[2,3:MAINTENANCE]    ;
  31:  R[53]=PR[2,4:MAINTENANCE]    ;
  32:  R[54]=PR[2,5:MAINTENANCE]    ;
  33:  R[55]=PR[2,6:MAINTENANCE]    ;
  34:  R[56]=PR[2,7:MAINTENANCE]    ;
  35:  R[50]=R[50]/57.296    ;
  36:  R[51]=R[51]/57.296    ;
  37:  R[52]=R[52]/57.296    ;
  38:  R[53]=R[53]/57.296    ;
  39:  R[54]=R[54]/57.296    ;
  40:  R[55]=R[55]/57.296    ;
  41:  $REFPOS1[3].$PERCHPOS[1]=R[50] ;
  42:  $REFPOS1[3].$PERCHPOS[2]=R[51] ;
  43:  $REFPOS1[3].$PERCHPOS[3]=R[52] ;
  44:  $REFPOS1[3].$PERCHPOS[4]=R[53] ;
  45:  $REFPOS1[3].$PERCHPOS[5]=R[54] ;
  46:  $REFPOS1[3].$PERCHPOS[6]=R[55] ;
  47:  $REFPOS1[3].$PERCHPOS[7]=R[56] ;
  48:   ;
  49:  LBL[3:PR 3] ;
  50:  R[50]=PR[3,1:INBOUND PERCH]    ;
  51:  R[51]=PR[3,2:INBOUND PERCH]    ;
  52:  R[52]=PR[3,3:INBOUND PERCH]    ;
  53:  R[53]=PR[3,4:INBOUND PERCH]    ;
  54:  R[54]=PR[3,5:INBOUND PERCH]    ;
  55:  R[55]=PR[3,6:INBOUND PERCH]    ;
  56:  R[56]=PR[3,7:INBOUND PERCH]    ;
  57:  R[50]=R[50]/57.296    ;
  58:  R[51]=R[51]/57.296    ;
  59:  R[52]=R[52]/57.296    ;
  60:  R[53]=R[53]/57.296    ;
  61:  R[54]=R[54]/57.296    ;
  62:  R[55]=R[55]/57.296    ;
  63:  $REFPOS1[4].$PERCHPOS[1]=R[50] ;
  64:  $REFPOS1[4].$PERCHPOS[2]=R[51] ;
  65:  $REFPOS1[4].$PERCHPOS[3]=R[52] ;
  66:  $REFPOS1[4].$PERCHPOS[4]=R[53] ;
  67:  $REFPOS1[4].$PERCHPOS[5]=R[54] ;
  68:  $REFPOS1[4].$PERCHPOS[6]=R[55] ;
  69:  $REFPOS1[4].$PERCHPOS[7]=R[56] ;
  70:   ;
  71:  LBL[4:PR 4] ;
  72:  R[50]=PR[4,1:OKUMA 1 PERCH]    ;
  73:  R[51]=PR[4,2:OKUMA 1 PERCH]    ;
  74:  R[52]=PR[4,3:OKUMA 1 PERCH]    ;
  75:  R[53]=PR[4,4:OKUMA 1 PERCH]    ;
  76:  R[54]=PR[4,5:OKUMA 1 PERCH]    ;
  77:  R[55]=PR[4,6:OKUMA 1 PERCH]    ;
  78:  R[56]=PR[4,7:OKUMA 1 PERCH]    ;
  79:  R[50]=R[50]/57.296    ;
  80:  R[51]=R[51]/57.296    ;
  81:  R[52]=R[52]/57.296    ;
  82:  R[53]=R[53]/57.296    ;
  83:  R[54]=R[54]/57.296    ;
  84:  R[55]=R[55]/57.296    ;
  85:  $REFPOS1[5].$PERCHPOS[1]=R[50] ;
  86:  $REFPOS1[5].$PERCHPOS[2]=R[51] ;
  87:  $REFPOS1[5].$PERCHPOS[3]=R[52] ;
  88:  $REFPOS1[5].$PERCHPOS[4]=R[53] ;
  89:  $REFPOS1[5].$PERCHPOS[5]=R[54] ;
  90:  $REFPOS1[5].$PERCHPOS[6]=R[55] ;
  91:  $REFPOS1[5].$PERCHPOS[7]=R[56] ;
  92:   ;
  93:  LBL[5:PR 5] ;
  94:  R[50]=PR[5,1:OKUMA 2 PERCH]    ;
  95:  R[51]=PR[5,2:OKUMA 2 PERCH]    ;
  96:  R[52]=PR[5,3:OKUMA 2 PERCH]    ;
  97:  R[53]=PR[5,4:OKUMA 2 PERCH]    ;
  98:  R[54]=PR[5,5:OKUMA 2 PERCH]    ;
  99:  R[55]=PR[5,6:OKUMA 2 PERCH]    ;
 100:  R[50]=R[50]/57.296    ;
 101:  R[51]=R[51]/57.296    ;
 102:  R[52]=R[52]/57.296    ;
 103:  R[53]=R[53]/57.296    ;
 104:  R[54]=R[54]/57.296    ;
 105:  R[55]=R[55]/57.296    ;
 106:  $REFPOS1[6].$PERCHPOS[1]=R[50] ;
 107:  $REFPOS1[6].$PERCHPOS[2]=R[51] ;
 108:  $REFPOS1[6].$PERCHPOS[3]=R[52] ;
 109:  $REFPOS1[6].$PERCHPOS[4]=R[53] ;
 110:  $REFPOS1[6].$PERCHPOS[5]=R[54] ;
 111:  $REFPOS1[6].$PERCHPOS[6]=R[55] ;
 112:  $REFPOS1[6].$PERCHPOS[7]=R[56] ;
 113:   ;
 114:  LBL[6:PR 6] ;
 115:  R[50]=PR[6,1:CMM PERCH]    ;
 116:  R[51]=PR[6,2:CMM PERCH]    ;
 117:  R[52]=PR[6,3:CMM PERCH]    ;
 118:  R[53]=PR[6,4:CMM PERCH]    ;
 119:  R[54]=PR[6,5:CMM PERCH]    ;
 120:  R[55]=PR[6,6:CMM PERCH]    ;
 121:  R[50]=R[50]/57.296    ;
 122:  R[51]=R[51]/57.296    ;
 123:  R[52]=R[52]/57.296    ;
 124:  R[53]=R[53]/57.296    ;
 125:  R[54]=R[54]/57.296    ;
 126:  R[55]=R[55]/57.296    ;
 127:  $REFPOS1[7].$PERCHPOS[1]=R[50] ;
 128:  $REFPOS1[7].$PERCHPOS[2]=R[51] ;
 129:  $REFPOS1[7].$PERCHPOS[3]=R[52] ;
 130:  $REFPOS1[7].$PERCHPOS[4]=R[53] ;
 131:  $REFPOS1[7].$PERCHPOS[5]=R[54] ;
 132:  $REFPOS1[7].$PERCHPOS[6]=R[55] ;
 133:  $REFPOS1[7].$PERCHPOS[7]=R[56] ;
/POS
/END
