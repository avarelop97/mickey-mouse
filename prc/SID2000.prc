//SID2000  PROC                                                         00010000
//*                                                                     00020000
//********************************************************************  00030000
//*                                                                  *  00040000
//* SISTEMA:                                                         *  00050000
//*                                                                  *  00060000
//* PROCESO:                                                         *  00070000
//*                                                                  *  00080000
//* OBJETIVO : LOAD DE LA TABLA MSGERLAT                             *  00090000
//*                                                                  *  00100000
//* REALIZO  : ASATECK                                               *  00110000
//*                                                                  *  00120000
//* FECHA    : JUNIO   1999                                          *  00130000
//********************************************************************* 00140000
//***            CARGA DE LA TABLA MSGERALT                         *** 00150000
//********************************************************************* 00160000
//SID20001 EXEC  DBP1PROC,COND=(0,NE),                                  00170000
//             TIME=1440,                                               00180000
//             SYSTEM=MXP1                                              00190000
//*YSREC   DD  DSN=SIVA.SIN.FIX.QGDTERR,DISP=SHR                        00200001
//SYSREC   DD  DSN=MBVP.AJ.FIX.QGDTERR,DISP=SHR                         00201001
//SORTWK01 DD  DSN=&&SORTWK01,DISP=(MOD,DELETE,DELETE),                 00210000
//             UNIT=SYSDA,                                              00220000
//             SPACE=(CYL,(10,20),,,ROUND)                              00230000
//SORTWK02 DD  DSN=&&SORTWK02,DISP=(MOD,DELETE,DELETE),                 00240000
//             UNIT=SYSDA,                                              00250000
//             SPACE=(CYL,(10,20),,,ROUND)                              00260000
//SORTWK03 DD  DSN=&&SORTWK03,DISP=(MOD,DELETE,DELETE),                 00270000
//             UNIT=SYSDA,                                              00280000
//             SPACE=(CYL,(10,20),,,ROUND)                              00290000
//SORTWK04 DD  DSN=&&SORTWK04,DISP=(MOD,DELETE,DELETE),                 00300000
//             UNIT=SYSDA,                                              00310000
//             SPACE=(CYL,(10,20),,,ROUND)                              00320000
//SYSUT1   DD  DSN=&&SYSUT1,DISP=(MOD,DELETE,DELETE),                   00330000
//             UNIT=SYSDA,                                              00340000
//             SPACE=(CYL,(10,20),,,ROUND)                              00350000
//SORTOUT  DD  DSN=&&SORTOUT,DISP=(MOD,DELETE,DELETE),                  00360000
//             UNIT=SYSDA,                                              00370000
//             SPACE=(CYL,(10,20),,,ROUND)                              00380000
//SYSIN    DD DSN=SIVA.CARDS(SID2001A),DISP=SHR                         00390000
//*                                                                     00400000
