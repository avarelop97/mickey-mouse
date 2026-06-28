//ZMJIPM09 PROC                                                         00000119
//*--------------------------------------------------------------------*00000200
//*               C A S A     D E     B O L S A                        *00000300
//*               -----------------------------                        *00000400
//*               SELECCION DE EMPLEADOS EN BANCA PATRIMONIAL          *00000500
//*                                                                    *00000600
//*                                                                    *00000900
//*--------------------------------------------------------------------*00001300
//*  MODIFICACIONES                                                    *00001400
//*--------------------------------------------------------------------*00005000
//**********************************************************************00005100
//* SORT : DEL ARCHIVO DE AJ POR ICUENTA E IEMPR                       *00005200
//* FUNCION:  SORT DEL ARCHIVO POR ICUENTA E IMPRESA  PARA LA          *00005300
//*           ACTUALIZACION DE LA TABLA CUENTA.                        *00005400
//**********************************************************************00005500
//ZMJI0905 EXEC PGM=ICEMAN                                              00005619
//SYSOUT   DD SYSOUT=*                                                  00005900
//SORTIN   DD DSN=MBV&AMB..AJ.FIX.AJPCCB30.F&FECHA,DISP=SHR             00006000
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.SORT,                    00006519
//            DISP=(NEW,CATLG,DELETE),                                  00006600
//            UNIT=3390,                                                00006700
//            RECFM=FB,LRECL=171,BLKSIZE=0,                             00006800
//            SPACE=(CYL,(4,2),RLSE)                                    00006900
//*           BUFNO=30                                                  00007000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI09T01),DISP=SHR                   00008319
//**********************************************************************00009900
//* PROGRMA: ZM4MJ205                                                  *00010000
//* FUNCION: PROGRAMA DE ACTUALIZACION DE REGISTROS.                   *00010100
//*          CON LAS SIGUIENTES CONDICIONES.                           *00010200
//*          UPDATE CUENTA                                             *00010300
//*             SET IESTRATO = 'PF2',                                  *00010400
//*                 ISUBCLAS = '020',                                  *00010500
//*                 IUSUARIO = :DCLCUENTA.IUSUARIO,                    *00010600
//*                 IPROGRAM = :DCLCUENTA.IPROGRAM,                    *00010700
//*                 FULTCAMB = :DCLCUENTA.FULTCAMB                     *00010800
//*          WHERE ICUENTA = :DCLCUENTA.ICUENTA                        *00010900
//*            AND IEMPR    ='BCM'                                     *00011000
//**********************************************************************00011100
//ZMJI0904 EXEC PGM=IKJEFT01,COND=(4,LT)                                00011219
//ZMM205E1  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.SORT,DISP=SHR           00011319
//ZMM205S1  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.F&FECHA,                00011419
//             DISP=(NEW,CATLG,DELETE),                                 00011500
//             DCB=(RECFM=FB,LRECL=171,BLKSIZE=0,DSORG=PS),             00011600
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00011700
//ZMM205S2  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.ERROR.F&FECHA,          00011819
//             DISP=(NEW,CATLG,DELETE),                                 00011900
//             DCB=(RECFM=FB,LRECL=171,BLKSIZE=0,DSORG=PS),             00012000
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00012100
//*                                                                     00012200
//SYSTSPRT DD SYSOUT=*                                                  00012300
//SYSPRINT DD SYSOUT=*                                                  00012400
//SYSOUT   DD SYSOUT=*                                                  00012500
//SYSDBOUT DD SYSOUT=*                                                  00012600
//SYSABOUT DD SYSOUT=*                                                  00012700
//SYSUDUMP DD DUMMY                                                     00012800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI09T02),DISP=SHR                   00013019
//*                                                                     00020000
//**********************************************************************00030000
//* SORT : DEL ARCHIVO   POR SUCURSAL                                  *00040000
//**********************************************************************00043000
//ZMJI0903 EXEC PGM=ICEMAN,COND=(4,LT)                                  00044019
//SYSOUT   DD SYSOUT=*                                                  00045000
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.F&FECHA,DISP=SHR         00045119
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.REP.SORT,                00045219
//            DISP=(NEW,CATLG,DELETE),                                  00045300
//            UNIT=3390,                                                00045400
//            RECFM=FB,LRECL=171,BLKSIZE=0,                             00045500
//            SPACE=(CYL,(4,2),RLSE)                                    00045600
//*          BUFNO=30                                                   00045700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJI09T03),DISP=SHR                   00045819
//**********************************************************************00046100
//* PROGRMA: ZM4MJ206                                                  *00046200
//* FUNCION: PROGRAMA QUE GENERA REPORTE CON LA CUENTAS ACTUALIZADAS   *00046300
//**********************************************************************00047100
//ZMJI0902 EXEC PGM=IKJEFT01,COND=(4,LT)                                00047219
//ZMM206E1  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.REP.SORT,DISP=SHR       00047319
//ZMM206R1  DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.REP.F&FECHA,            00047419
//             DISP=(NEW,CATLG,DELETE),                                 00047500
//             DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),             00047600
//             UNIT=3390,SPACE=(CYL,(4,2),RLSE)                         00047700
//*                                                                     00047800
//SYSTSPRT DD SYSOUT=*                                                  00047900
//SYSPRINT DD SYSOUT=*                                                  00048000
//SYSOUT   DD SYSOUT=*                                                  00048100
//SYSDBOUT DD SYSOUT=*                                                  00048200
//SYSABOUT DD SYSOUT=*                                                  00048300
//SYSUDUMP DD DUMMY                                                     00048400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI09T04),DISP=SHR                   00048519
//*                                                                     00048900
//******************************************************************    00049000
//*                SE ADICIONA CONDICION                           *    00049100
//*                PARA QUE SEA TOMADA POR CTL-D                   *    00049200
//******************************************************************    00049300
//ZMJI0901 EXEC PGM=ICEGENER,COND=(4,LT)                                00050200
//SYSPRINT DD SYSOUT=*                                                  00050300
//SYSOUT   DD SYSOUT=*                                                  00050400
//SYSIN    DD DUMMY                                                     00050500
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.SDI.ZMJIPM09.REP.F&FECHA,DISP=SHR     00050600
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00050700
//*                                                                     00050800
//******************************************************************    00050900
//*                SE ADICIONA CONDICION                           *    00051000
//*                PARA QUE SEA TOMADA POR CTL-D                   *    00051100
//******************************************************************    00051200
//ZMJI0900 EXEC  PGM=CTMCND,PARM='ADD COND BCJINM09_IN_SEP_OK WDATE',   00051300
//         COND=(4,LT)                                                  00051400
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00051500
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00051600
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00051700
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00051800
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00051900
//PRTDBG   DD SYSOUT=*                                                  00052000
//SYSPRINT DD DUMMY                                                     00052100
//SYSUDUMP DD DUMMY                                                     00052200
//DAPRINT  DD SYSOUT=*                                                  00052300
//DACNDIN  DD DDNAME=SYSIN                                              00052400
//********************************************************************* 00052500
//*        TERMINA PROCESO ZMJIPM09 BANCA PATRIMONIAL                   00052600
//********************************************************************* 00052700
