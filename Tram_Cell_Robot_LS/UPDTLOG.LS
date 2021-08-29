17/09/22 22:49:40

Version:  V8.30P/32/None
Build ID: V8.30211      5/30/2017

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R861
1A05B-2500-J567
1A05B-2500-R785
1A05B-2500-J518
1A05B-2500-R650
1A05B-2500-R553
1A05B-2500-R577
1A05B-2500-R809
1A05B-2500-J541
1A05B-2500-J669
1A05B-2500-R848
1A05B-2500-R831
1A05B-2500-H724
Z

 ***At the beginning of Auto Update.***

Img.Backup Yes     * must have one ' ' then 'yes' or 'no'
! Next what devices should be backed up:
! Each line needs the word "BackupDevice", then space then 
! the device name with ":"
BackupDevice FR:
BackupDevice FRA:
!BackupDevice RD:
!BackupDevice FR1:
! Next is whether saving the backup (all and image) after 
! auto update or not. Select 'YES' or 'NO' after 
! "AfterBackup" and one space. YES: save, NO: not save.
! When MC: does not have enough capacity, backup is not
! saved even if "AfterBackup YES".
AfterBackup NO
!
! Restore I/O status,  must have one ' ' then 'yes' or 'no'
SetUpIOstat Yes
F Number: 4058224   
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     22-SEP-17 22:50 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     689.7KB     689.7KB
PERM        1978.0KB     792.0KB     791.8KB
SYSTEM      8159.6KB       3.9KB       3.9KB
SHADOW      6698.3KB    6074.2KB      32.0KB
TEMP       50561.7KB   34100.8KB   26533.7KB
FROM       63481.0KB   24135.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5573.9KB    5573.9KB
SHADOW      6698.3KB    6074.2KB      32.0KB
TEMP        9761.8KB    7590.8KB    7590.7KB
MC:\00\TEMP\IAHAND.SV file missing from backup

 ***At Controlled Start.***

F Number: 4058224   
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     22-SEP-17 23:08 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     682.9KB     682.8KB
PERM        1978.0KB     806.4KB     806.2KB
SYSTEM      8847.6KB       2.4KB       2.4KB
SHADOW      6698.3KB    6076.7KB      32.0KB
TEMP       49873.7KB   37669.2KB   27663.5KB
FROM       63481.0KB   23409.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5491.3KB    5491.3KB
SHADOW      6698.3KB    6076.7KB      32.0KB
TEMP        9761.8KB    7650.6KB    7641.8KB

 ***At Cold Start.***

ERRALL.LS      Robot Name ROBOT 22-SEP-17 23:09:54  

1" 22-SEP-17 23:09:52 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
2" 22-SEP-17 23:09:48 " SRVO-003 Deadman switch released                  " " SERVO                         00110110" act"
3" 22-SEP-17 23:09:48 " SRVO-006 Hand broken                              " " SERVO                         00110110" act"
4" 22-SEP-17 23:09:48 " R E S E T                                         " "                               00000000"    "
5" 22-SEP-17 23:09:48 " SYST-038 Operation mode T1 Selected               " " SERVO                         00110110"    "
6" 22-SEP-17 23:09:48 " SRVO-003 Deadman switch released                  " " SERVO                         00110110"    "
7" 22-SEP-17 23:09:48 " SYST-305 System startup in progress               " " STOP.G                        00100110"    "
8" 22-SEP-17 23:09:48 " SRVO-006 Hand broken                              " " SERVO                         00110110"    "
9" 22-SEP-17 23:09:32 " SYST-026 System normal power up                   " " WARN                          00000000"    "
10" 22-SEP-17 23:09:32 " HOST-178 Router Address Not Defined               " " WARN                          00000000"    "
11" 22-SEP-17 23:09:32 " HOST-108 Internet address not found               " " WARN                          00000000"    "
12" 22-SEP-17 23:09:48 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
13" 22-SEP-17 23:09:12 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
14" 22-SEP-17 23:09:12 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
15" 22-SEP-17 23:08:44 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
16" 22-SEP-17 23:08:44 " SYST-290 Cycle power to use new DCS parameter     " " STOP.G                        00100110"    "
17" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\USERPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
18" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\USERCLR.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
19" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\STATPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
20" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\PROMPTYN.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
21" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\PROMPTOK.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
22" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\OPERMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
23" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\LISTMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
24" 22-SEP-17 23:08:38 " TPIF-218 MC:\00\TEMP\ABORTIT.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
25" 22-SEP-17 23:08:26 " FILE-063 (MC:\00\TEMP\IAHAND.SV) is not loaded    " FILE-014 File not found                           " STOP.G                        00100110"    "
26" 22-SEP-17 23:08:14 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
27" 22-SEP-17 23:08:14 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
28" 22-SEP-17 23:08:14 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
29" 22-SEP-17 23:08:14 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
30" 22-SEP-17 23:08:06 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
31" 22-SEP-17 23:08:06 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
32" 22-SEP-17 23:08:06 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
33" 22-SEP-17 23:08:06 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
34" 22-SEP-17 23:07:58 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
35" 22-SEP-17 23:06:16 " OPTN-018 No CUSTO additions on this media         " " WARN                          00000000"    "
36" 22-SEP-17 23:05:56 " OPTN-018 No Language additions on this media      " " WARN                          00000000"    "
37" 22-SEP-17 23:04:50 " HOST-178 Router Address Not Defined               " " WARN                          00000000"    "
38" 22-SEP-17 23:04:50 " HOST-108 Internet address not found               " " WARN                          00000000"    "
39" 22-SEP-17 23:04:36 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
40" 22-SEP-17 23:04:36 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
41" 22-SEP-17 22:53:06 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
42" 22-SEP-17 22:53:06 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "

 ***At Cold Start.***

F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     22-SEP-17 23:09 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     682.9KB     682.8KB
PERM        1978.0KB     725.9KB     724.9KB
SYSTEM      8847.6KB       2.4KB       2.4KB
SHADOW      6698.3KB    6068.6KB      32.0KB
TEMP       49873.7KB   32667.8KB   25741.9KB
FROM       63481.0KB   23387.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5491.3KB    5491.3KB
SHADOW      6698.3KB    6068.6KB      32.0KB
TEMP        9761.8KB    7599.4KB    7598.7KB
** Update Complete 22-SEP-17 23:09 

17/10/18 02:37:38

Version:  V8.30P/32/None
Build ID: V8.30211      5/30/2017

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R861
1A05B-2500-J567
1A05B-2500-R785
1A05B-2500-J518
1A05B-2500-R650
1A05B-2500-R553
1A05B-2500-R577
1A05B-2500-R809
1A05B-2500-J541
1A05B-2500-J669
1A05B-2500-R848
1A05B-2500-R831
1A05B-2500-H724
1A05B-2500-R759
Z

 ***At the beginning of Auto Update.***

Img.Backup Yes     * must have one ' ' then 'yes' or 'no'
! Next what devices should be backed up:
! Each line needs the word "BackupDevice", then space then 
! the device name with ":"
BackupDevice FR:
BackupDevice FRA:
!BackupDevice RD:
!BackupDevice FR1:
! Next is whether saving the backup (all and image) after 
! auto update or not. Select 'YES' or 'NO' after 
! "AfterBackup" and one space. YES: save, NO: not save.
! When MC: does not have enough capacity, backup is not
! saved even if "AfterBackup YES".
AfterBackup NO
!
! Restore I/O status,  must have one ' ' then 'yes' or 'no'
SetUpIOstat Yes
F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     18-OCT-17 02:38 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     474.8KB     444.0KB
PERM        1978.0KB     673.3KB     665.4KB
SYSTEM      8847.6KB       2.4KB       2.4KB
SHADOW      6698.3KB    6029.7KB      32.0KB
TEMP       49873.7KB   31977.2KB   24448.8KB
FROM       63481.0KB   23241.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5491.3KB    5491.3KB
SHADOW      6698.3KB    6029.7KB      32.0KB
TEMP        9761.8KB    7578.6KB    7572.0KB
MC:\00\TEMP\SYSEGD.SV file missing from backup
MC:\00\TEMP\SYSEGD.SV file missing from backup

 ***At Controlled Start.***

F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     18-OCT-17 02:59 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     476.4KB     445.3KB
PERM        1978.0KB     718.6KB     717.8KB
SYSTEM      8851.6KB       3.2KB       3.2KB
SHADOW      6698.3KB    6029.6KB      32.0KB
TEMP       49869.7KB   37116.8KB   27300.9KB
FROM       63481.0KB   23329.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5478.8KB    5478.8KB
SHADOW      6698.3KB    6029.6KB      32.0KB
TEMP        9761.8KB    7617.8KB    7617.0KB

 ***At Cold Start.***

ERRALL.LS      Robot Name ROBOT 18-OCT-17 03:00:32  

1" 18-OCT-17 03:00:26 " SRVO-003 Deadman switch released                  " " SERVO                         00110110" act"
2" 18-OCT-17 03:00:26 " SRVO-037 IMSTP input (Group:1)                    " " SERVO                         00110110" act"
3" 18-OCT-17 03:00:26 " R E S E T                                         " "                               00000000"    "
4" 18-OCT-17 03:00:26 " SYST-038 Operation mode T1 Selected               " " SERVO                         00110110"    "
5" 18-OCT-17 03:00:26 " SRVO-004 Fence open                               " " SERVO                         00110110"    "
6" 18-OCT-17 03:00:26 " SRVO-003 Deadman switch released                  " " SERVO                         00110110"    "
7" 18-OCT-17 03:00:26 " SYST-305 System startup in progress               " " STOP.G                        00100110"    "
8" 18-OCT-17 03:00:26 " SRVO-037 IMSTP input (Group:1)                    " " SERVO                         00110110"    "
9" 18-OCT-17 03:00:26 " SRVO-300 Hand broken/HBK disabled                 " " SERVO                         00110110"    "
10" 18-OCT-17 03:00:12 " SYST-026 System normal power up                   " " WARN                          00000000"    "
11" 18-OCT-17 03:00:12 " HOST-178 Router Address Not Defined               " " WARN                          00000000"    "
12" 18-OCT-17 03:00:26 " PRIO-230 EtherNet/IP Adapter Error (1)            " PRIO-231 EtherNet/IP Adapter Idle                 " WARN                          00000000"    "
13" 18-OCT-17 02:59:50 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
14" 18-OCT-17 02:59:50 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
15" 18-OCT-17 02:59:24 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
16" 18-OCT-17 02:59:22 " SYST-290 Cycle power to use new DCS parameter     " " STOP.G                        00100110"    "
17" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\WAIT4SYNC.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
18" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\USERPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
19" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\USERCLR.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
20" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\SYNC2WAIT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
21" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\STATPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
22" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\SENDSYSV.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
23" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\SENDEVNT.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
24" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\SENDDATA.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
25" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\REQMENU.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
26" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\PROMPTYN.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
27" 18-OCT-17 02:59:16 " TPIF-218 MC:\00\TEMP\PROMPTOK.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
28" 18-OCT-17 02:59:12 " TPIF-218 MC:\00\TEMP\OPERMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
29" 18-OCT-17 02:59:10 " TPIF-218 MC:\00\TEMP\LISTMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
30" 18-OCT-17 02:59:08 " TPIF-218 MC:\00\TEMP\GETDATA.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
31" 18-OCT-17 02:59:08 " TPIF-218 MC:\00\TEMP\EXITFZONE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
32" 18-OCT-17 02:59:08 " TPIF-218 MC:\00\TEMP\EXITALL.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
33" 18-OCT-17 02:59:08 " TPIF-218 MC:\00\TEMP\ENTER2ZONE.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
34" 18-OCT-17 02:59:08 " TPIF-218 MC:\00\TEMP\ABORTIT.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
35" 18-OCT-17 02:58:56 " FILE-063 (MC:\00\TEMP\SYSEGD.SV) is not loaded    " FILE-014 File not found                           " STOP.G                        00100110"    "
36" 18-OCT-17 02:58:46 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
37" 18-OCT-17 02:58:46 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
38" 18-OCT-17 02:58:46 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
39" 18-OCT-17 02:58:46 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
40" 18-OCT-17 02:58:36 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
41" 18-OCT-17 02:58:00 " HOST-178 Router Address Not Defined               " " WARN                          00000000"    "
42" 18-OCT-17 02:57:58 " VARS-207 POSREG.VR loaded at startup              " " WARN                          00000000"    "
43" 18-OCT-17 02:57:58 " VARS-207 NUMREG.VR loaded at startup              " " WARN                          00000000"    "
44" 18-OCT-17 02:57:56 " VARS-207 SYSVARS.SV loaded at startup             " " WARN                          00000000"    "
45" 18-OCT-17 02:57:46 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
46" 18-OCT-17 02:57:46 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
47" 18-OCT-17 02:57:46 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
48" 18-OCT-17 02:57:46 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
49" 18-OCT-17 02:57:40 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
50" 18-OCT-17 02:57:40 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
51" 18-OCT-17 02:57:40 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
52" 18-OCT-17 02:57:40 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
53" 18-OCT-17 02:57:24 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
54" 18-OCT-17 02:57:24 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
55" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\WAIT4SYNC.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
56" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\USERPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
57" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\USERCLR.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
58" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\SYNC2WAIT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
59" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\STATPAGE.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
60" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\PROMPTYN.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
61" 18-OCT-17 02:57:04 " TPIF-218 MC:\00\TEMP\PROMPTOK.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
62" 18-OCT-17 02:57:00 " TPIF-218 MC:\00\TEMP\OPERMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
63" 18-OCT-17 02:56:58 " TPIF-218 MC:\00\TEMP\LISTMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
64" 18-OCT-17 02:56:58 " TPIF-218 MC:\00\TEMP\EXITFZONE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
65" 18-OCT-17 02:56:58 " TPIF-218 MC:\00\TEMP\EXITALL.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
66" 18-OCT-17 02:56:58 " TPIF-218 MC:\00\TEMP\ENTER2ZONE.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
67" 18-OCT-17 02:56:56 " TPIF-218 MC:\00\TEMP\ABORTIT.TP failed to load    " MEMO-006 Protection error occurred                " WARN                          00000000"    "
68" 18-OCT-17 02:56:52 " VARS-206 POSREG.VR will load at startup           " " WARN                          00000000"    "
69" 18-OCT-17 02:56:52 " VARS-004 $POSREG memory not updated               " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
70" 18-OCT-17 02:56:50 " VARS-206 NUMREG.VR will load at startup           " " WARN                          00000000"    "
71" 18-OCT-17 02:56:50 " VARS-004 $NUMREG memory not updated               " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
72" 18-OCT-17 02:56:48 " FILE-063 (MC:\00\TEMP\SYSEGD.SV) is not loaded    " FILE-014 File not found                           " STOP.G                        00100110"    "
73" 18-OCT-17 02:56:40 " VARS-206 POSREG.VR will load at startup           " " WARN                          00000000"    "
74" 18-OCT-17 02:56:40 " VARS-004 $POSREG memory not updated               " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
75" 18-OCT-17 02:56:38 " VARS-206 NUMREG.VR will load at startup           " " WARN                          00000000"    "
76" 18-OCT-17 02:56:38 " VARS-004 $NUMREG memory not updated               " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
77" 18-OCT-17 02:56:22 " VARS-206 SYSVARS.SV will load at startup          " " WARN                          00000000"    "
78" 18-OCT-17 02:56:18 " VARS-005 $UALRM_SEV PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
79" 18-OCT-17 02:56:18 " VARS-005 $UALRM_MSG PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
80" 18-OCT-17 02:56:10 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
81" 18-OCT-17 02:56:10 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
82" 18-OCT-17 02:56:10 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
83" 18-OCT-17 02:56:10 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
84" 18-OCT-17 02:56:04 " VARS-005 $PGTRACEDT PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
85" 18-OCT-17 02:56:04 " VARS-005 $PGTRACECTL PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
86" 18-OCT-17 02:56:02 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
87" 18-OCT-17 02:56:02 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
88" 18-OCT-17 02:55:52 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
89" 18-OCT-17 02:54:06 " OPTN-018 No CUSTO additions on this media         " " WARN                          00000000"    "
90" 18-OCT-17 02:53:46 " OPTN-018 No Language additions on this media      " " WARN                          00000000"    "
91" 18-OCT-17 02:52:42 " HOST-178 Router Address Not Defined               " " WARN                          00000000"    "
92" 18-OCT-17 02:52:42 " HOST-108 Internet address not found               " " WARN                          00000000"    "
93" 18-OCT-17 02:52:26 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
94" 18-OCT-17 02:52:26 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "
95" 18-OCT-17 02:40:46 " FILE-069 USB hub Ins On Time Informatik OHCI Virtual Root Hub" " WARN                          00000000"    "
96" 18-OCT-17 02:40:46 " FILE-071 USB vend: 0000 prod: 0000                " " WARN                          00000000"    "

 ***At Cold Start.***

F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30211      5/30/2017
DATE:     18-OCT-17 03:00 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP          700.0KB     476.4KB     445.3KB
PERM        1978.0KB     684.4KB     684.0KB
SYSTEM      8851.6KB       3.2KB       3.2KB
SHADOW      6698.3KB    6029.7KB      32.0KB
TEMP       49869.7KB   32195.3KB   25750.9KB
FROM       63481.0KB   23292.0KB        .0KB
HARDWARE
FROM      64MB
DRAM      64MB
SRAM       2MB

MEMORY DETAIL (COMM):
Pools        TOTAL     AVAILABLE      LARGEST
TPP            0.0KB       0.0KB       0.0KB
PERM          48.0KB      47.8KB      47.8KB
SYSTEM      6144.0KB    5478.8KB    5478.8KB
SHADOW      6698.3KB    6029.7KB      32.0KB
TEMP        9761.8KB    7581.4KB    7573.6KB
** Update Complete 18-OCT-17 03:00 

20/12/31 06:48:28

Version:  V8.30P/32/None
Build ID: V8.30211      5/30/2017

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R861
1A05B-2500-J567
1A05B-2500-R785
1A05B-2500-J518
1A05B-2500-R650
1A05B-2500-R553
1A05B-2500-R577
1A05B-2500-R809
1A05B-2500-J541
1A05B-2500-J669
1A05B-2500-R848
1A05B-2500-R831
1A05B-2500-H724
1A05B-2500-R759
1A05B-2500-R793
Z

 ***At the beginning of Auto Update.***

Img.Backup Yes     * must have one ' ' then 'yes' or 'no'
! Next what devices should be backed up:
! Each line needs the word "BackupDevice", then space then 
! the device name with ":"
BackupDevice FR:
BackupDevice FRA:
!BackupDevice RD:
!BackupDevice FR1:
! Next is whether saving the backup (all and image) after 
! auto update or not. Select 'YES' or 'NO' after 
! "AfterBackup" and one space. YES: save, NO: not save.
! When MC: does not have enough capacity, backup is not
! saved even if "AfterBackup YES".
AfterBackup NO
!
! Restore I/O status,  must have one ' ' then 'yes' or 'no'
SetUpIOstat Yes
MED:\00\TEMP\SYSPASS.SV file missing from backup
MED:\00\TEMP\SYSPASS.SV file missing from backup

 ***At Controlled Start.***

F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30358      3/23/2021
DATE:     13-AUG-21 10:54 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     776.4KB     739.8KB
PERM        3064.0KB    1463.1KB    1462.7KB
SYSTEM          .0KB       0.0KB       0.0KB
SHADOW      6698.3KB    5996.7KB      32.0KB
TEMP       65458.3KB   44903.3KB   44035.6KB
FROM      130764.0KB   95966.0KB        .0KB
HARDWARE
FROM     128MB
DRAM      64MB
SRAM       3MB

860 memconfig skipped for virtual.


 ***At Cold Start.***

ERRALL.LS      Robot Name ROBOT1 13-AUG-21 10:54:36  

237" 13-AUG-21 10:54:36 " SRVO-302 Set Hand broken to ENABLE                " " SERVO                         00110110" act"
238" 13-AUG-21 10:54:36 " R E S E T                                         " "                               00000000"    "
239" 13-AUG-21 10:54:36 " SRVO-302 Set Hand broken to ENABLE                " " SERVO                         00110110"    "
240" 13-AUG-21 10:54:36 " SYST-203 Robot #1 has become online               " " WARN                          00000000"    "
241" 13-AUG-21 10:54:34 " SYST-026 System normal power up                   " " WARN                          00000000"    "
242" 13-AUG-21 10:54:32 " RIPE-011 This robot is not in the ring            " " WARN                          00000000"    "
243" 13-AUG-21 10:54:32 " VARS-207 SYSVARS.SV loaded at startup             " " WARN                          00000000"    "
244" 13-AUG-21 10:54:32 " VARS-052 Variable $ZMP_GRP converted              " " WARN                          00000000"    "
245" 13-AUG-21 10:54:32 " VARS-052 Variable $SV_INFO converted              " " WARN                          00000000"    "
246" 13-AUG-21 10:54:32 " VARS-052 Variable $SCR_GRP converted              " " WARN                          00000000"    "
247" 13-AUG-21 10:54:32 " VARS-052 Variable $SCR converted                  " " WARN                          00000000"    "
248" 13-AUG-21 10:54:30 " VARS-052 Variable $PSLGTEMP converted             " " WARN                          00000000"    "
249" 13-AUG-21 10:54:30 " VARS-052 Variable $PSLGSET converted              " " WARN                          00000000"    "
250" 13-AUG-21 10:54:30 " VARS-052 Variable $PARAM2_GRP converted           " " WARN                          00000000"    "
251" 13-AUG-21 10:54:30 " VARS-052 Variable $MRR2_GRP converted             " " WARN                          00000000"    "
252" 13-AUG-21 10:54:30 " VARS-052 Variable $LGCFG converted                " " WARN                          00000000"    "
253" 13-AUG-21 10:54:30 " VARS-052 Variable $IB_ELBCMB converted            " " WARN                          00000000"    "
254" 13-AUG-21 10:54:30 " VARS-052 Variable $IB_CHKCMB converted            " " WARN                          00000000"    "
255" 13-AUG-21 10:54:30 " VARS-052 Variable $IA_ELBCMB converted            " " WARN                          00000000"    "
256" 13-AUG-21 10:54:30 " VARS-052 Variable $IA_CHKCMB converted            " " WARN                          00000000"    "
257" 13-AUG-21 10:54:30 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
258" 13-AUG-21 10:54:30 " VARS-052 Variable $HOSTS_CFG converted            " " WARN                          00000000"    "
259" 13-AUG-21 10:54:30 " VARS-052 Variable $HOSTC_CFG converted            " " WARN                          00000000"    "
260" 13-AUG-21 10:54:30 " VARS-052 Variable $DIAG_GRP converted             " " WARN                          00000000"    "
261" 13-AUG-21 10:54:30 " VARS-052 Variable $DCSS_HNDGD converted           " " WARN                          00000000"    "
262" 13-AUG-21 10:54:30 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
263" 13-AUG-21 10:54:30 " VARS-052 Variable $CRCFG converted                " " WARN                          00000000"    "
264" 13-AUG-21 10:54:30 " VARS-052 Variable $ATCELLSETUP converted          " " WARN                          00000000"    "
265" 13-AUG-21 10:54:30 " VARS-052 Variable $ALM_IF converted               " " WARN                          00000000"    "
266" 13-AUG-21 10:54:30 " VARS-054 Sysvars - V8.30211      5/30/2017 loaded " " WARN                          00000000"    "
267" 13-AUG-21 10:54:30 " VARS-052 Variable $PARAM2_GRP converted           " " WARN                          00000000"    "
268" 13-AUG-21 10:54:30 " VARS-052 Variable $MRR2_GRP converted             " " WARN                          00000000"    "
269" 13-AUG-21 10:54:30 " VARS-052 Variable $LGCFG converted                " " WARN                          00000000"    "
270" 13-AUG-21 10:54:30 " VARS-052 Variable $IB_ELBCMB converted            " " WARN                          00000000"    "
271" 13-AUG-21 10:54:30 " VARS-052 Variable $IB_CHKCMB converted            " " WARN                          00000000"    "
272" 13-AUG-21 10:54:30 " VARS-052 Variable $IA_ELBCMB converted            " " WARN                          00000000"    "
273" 13-AUG-21 10:54:30 " VARS-052 Variable $IA_CHKCMB converted            " " WARN                          00000000"    "
274" 13-AUG-21 10:54:30 " VARS-005 $HSCD_GROUP PC array length ignored      " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
275" 13-AUG-21 10:54:30 " VARS-052 Variable $HOSTS_CFG converted            " " WARN                          00000000"    "
276" 13-AUG-21 10:54:30 " VARS-052 Variable $HOSTC_CFG converted            " " WARN                          00000000"    "
277" 13-AUG-21 10:54:30 " VARS-052 Variable $DIAG_GRP converted             " " WARN                          00000000"    "
278" 13-AUG-21 10:54:30 " VARS-052 Variable $DCSS_HNDGD converted           " " WARN                          00000000"    "
279" 13-AUG-21 10:54:30 " VARS-005 $DB_RECORD PC array length ignored       " VARS-023 Array len creation mismatch              " WARN                          00000000"    "
280" 13-AUG-21 10:54:30 " VARS-052 Variable $CRCFG converted                " " WARN                          00000000"    "
281" 13-AUG-21 10:54:30 " VARS-052 Variable $ATCELLSETUP converted          " " WARN                          00000000"    "
282" 13-AUG-21 10:54:30 " VARS-052 Variable $ALM_IF converted               " " WARN                          00000000"    "
283" 13-AUG-21 10:54:30 " VARS-054 Sysvars - V8.30211      5/30/2017 loaded " " WARN                          00000000"    "
284" 13-AUG-21 10:54:20 " OPTN-017 No UPDATES on this media                 " " WARN                          00000000"    "
285" 13-AUG-21 10:54:20 " SYST-290 Cycle power to use new DCS parameter     " " STOP.G                        00100110"    "
286" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\WAIT4SYNC.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
287" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\USERPAGE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
288" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\USERCLR.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
289" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\UPDATE_REF.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
290" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\SYNC2WAIT.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
291" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\STATPAGE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
292" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\SENDSYSV.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
293" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\SENDEVNT.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
294" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\SENDDATA.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
295" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK2_WASHOP20.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
296" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK2_WASHOP10.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
297" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK2_OP20.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
298" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK2_OP10.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
299" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK1_WASHOP20.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
300" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK1_WASHOP10.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
301" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK1_OP20.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
302" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\RPS_OK1_OP10.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
303" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\REQMENU.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
304" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\PROMPTYN.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
305" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\PROMPTOK.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
306" 13-AUG-21 10:54:18 " TPIF-218 MED:\00\TEMP\PRG_SELECT.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
307" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\PNS0004.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
308" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\PNS0002.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
309" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\PNS0001.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
310" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\PAYLOAD.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
311" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\P10037756.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
312" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OVERRIDE.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
313" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OPERMENU.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "
314" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OPEN_T2.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
315" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OPEN_T1.TP failed to load   " MEMO-006 Protection error occurred                " WARN                          00000000"    "
316" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_2_ORIENT2.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
317" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_2_ORIENT1.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
318" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_2_OPEN_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
319" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_2_CLS_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
320" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_1_ORIENT2.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
321" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_1_ORIENT1.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
322" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_1_OPEN_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
323" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP20_1_CLS_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
324" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_2_ORIENT1.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
325" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_2_OPEN_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
326" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_2_CLS_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
327" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_1_ORIENT1.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
328" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_1_OPEN_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
329" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\OP10_1_CLS_CHUCK.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
330" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_T2ALM.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
331" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_T1ALM.TP failed to load " MEMO-006 Protection error occurred                " WARN                          00000000"    "
332" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_OP20_2ALM.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
333" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_OP20_1ALM.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
334" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_OP10_2ALM.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
335" 13-AUG-21 10:54:16 " TPIF-218 MED:\00\TEMP\MON_OP10_1ALM.TP failed to load" MEMO-006 Protection error occurred                " WARN                          00000000"    "
336" 13-AUG-21 10:54:14 " TPIF-218 MED:\00\TEMP\LISTMENU.TP failed to load  " MEMO-006 Protection error occurred                " WARN                          00000000"    "

 ***At Cold Start.***

F Number: 4058224
VERSION : HandlingTool         
$VERSION: V8.30358      3/23/2021
DATE:     13-AUG-21 10:54 

MEMORY USAGE::

MEMORY DETAIL (MAIN):
Pools        TOTAL     AVAILABLE      LARGEST
TPP         1000.0KB     776.4KB     739.8KB
PERM        3064.0KB    1425.7KB    1425.4KB
SYSTEM          .0KB       0.0KB       0.0KB
SHADOW      6698.3KB    5996.8KB      32.0KB
TEMP       65458.3KB   39025.9KB   39019.4KB
FROM      130764.0KB   96072.0KB        .0KB
HARDWARE
FROM     128MB
DRAM      64MB
SRAM       3MB

860 memconfig skipped for virtual.

** Update Complete 13-AUG-21 10:54 

21/08/28 20:38:08

Version:  V8.30P/61/None
Build ID: V8.30358      3/23/2021

1A05B-2500-H552
1A05B-2500-H521
1A05B-2500-R796
1A05B-2500-R861
1A05B-2500-J567
1A05B-2500-R793
1A05B-2500-R785
1A05B-2500-J518
1A05B-2500-R650
1A05B-2500-R553
1A05B-2500-R759
1A05B-2500-R577
1A05B-2500-R809
1A05B-2500-R641
1A05B-2500-J541
1A05B-2500-J669
1A05B-2500-R848
1A05B-2500-R831
1A05B-2500-FVRC
1A05B-2500-H724
Z
