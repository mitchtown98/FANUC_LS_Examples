/PROG FANUC_Test1_0
/ATTR
OWNER = SHIFT;
  FILE_NAME  = FANUC_Test1_0 ;
PROG_SIZE = 0;
CREATE = DATE 00-00-00  TIME 00:00:00;
MODIFIED = DATE 00-00-00  TIME 00:00:00;
VERSION  = 0;
PROTECT  = READ_WRITE;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE = 00000000 00000000;
LOCAL_REGISTERS = 0, 0, 0;
/MN
1: CALL INITDEPOSITION;
2: !Frame definition; 
3: PR[1,1]= 1181.452 ;
4: PR[1,2]= -405.562 ;
5: PR[1,3]= 936.630 ;
6: PR[1,4]= -180.000 ;
7: PR[1,5]= 180.000 ;
8: PR[1,6]= 0.000 ;
9: PR[1,7]= 0 ;
10: PR[1,8]= 0 ;
11: PR[1,9]= 0 ;
12: UFRAME[1]=PR[1] ;
13: UFRAME_NUM=1 ;
14: ! Tool definition ;
15: PR[1,1]= -252.000 ;
16: PR[1,2]= 0.000 ;
17: PR[1,3]= 190.000 ;
18: PR[1,4]= 0.000 ;
19: PR[1,5]= 90.000 ;
20: PR[1,6]= 0.000 ;
21: PR[1,7]= 0 ;
22: PR[1,8]= 0 ;
23: PR[1,9]= 0 ;
24: UTOOL[0]=PR[1] ;
25: UTOOL_NUM=0 ;
26: ! Joint Move ;
27: J P[1] 2% CNT100 ;
28: L P[2] 250mm/sec CNT100 ;
29: CALL STARTDEPOSITION;
30: L P[3] 100mm/sec CNT100 ;
31: L P[4] 100mm/sec CNT100 ;
32: L P[5] 100mm/sec CNT100 ;
33: L P[6] 100mm/sec CNT100 ;
34: L P[7] 100mm/sec CNT100 ;
35: L P[8] 100mm/sec CNT100 ;
36: L P[9] 100mm/sec CNT100 ;
37: L P[10] 100mm/sec CNT100 ;
38: L P[11] 100mm/sec CNT100 ;
39: L P[12] 100mm/sec CNT100 ;
40: CALL ENDDEPOSITION;
/POS
P[1] {
  GP1:
    UF : 1, UT : 0,
      J1 = -24.960 deg, J2 = -6.240 deg, J3 = -26.810 deg,
      J4 = -127.130 deg, J5 = -31.960 deg, J6 = 131.720 deg
  GP2:
     UF : 1, UT : 0,
     J1 = 0.000 deg, J2 = 0.000 deg
};
P[2] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 0.000  mm, Y = -49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[3] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 0.000  mm, Y = -49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[4] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = -49.400  mm, Y = -49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[5] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = -49.400  mm, Y = 46.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[6] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = -49.400  mm, Y = 49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[7] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = -46.400  mm, Y = 49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[8] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 46.400  mm, Y = 49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[9] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 49.400  mm, Y = 49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[10] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 49.400  mm, Y = 46.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[11] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 49.400  mm, Y = -49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
P[12] {
  GP1:
    UF : 1, UT : 0,        CONFIG : 'N U T, 0, 0, 0',
      X = 0.000  mm, Y = -49.400 mm, Z = 1.200 mm,
      W = -0.000 deg, P = 0.000 deg, R = 0.000 deg
  GP2:
    UF : 1, UT : 0,
      J1 = 0.000 deg, J2 = 0.000 deg
};
/END

