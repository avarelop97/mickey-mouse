//ZMHFNB44  PROC                                                        00000101
//**********************************************************************00000200
//* OBJETIVO       :  REALIZA CAMBIO DE LIQUIDACION POR LAS PETICIONES *00001300
//*                   QUE LLEGARON DESDE GL (MUV)                      *00001400
//*                                                                    *00001500
//**********************************************************************00003400
//*                      LOG DE MODIFICACIONES                         *00003700
//**********************************************************************00003800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003900
//*--------------------------------------------------------------------*00004000
//**********************************************************************00007800
//*                            (ZM4DH520)                              *00007900
//* OBJETIVO : REALIZA CAMBIO DE LIQUIDACION                           *00008200
//**********************************************************************00008700
//PHNB4401 EXEC PGM=IKJEFT01,COND=(4,LT)                                00008801
//*                                                                     00008900
//SYSIN    DD DUMMY                                                     00009600
//SYSTSPRT DD SYSOUT=*                                                  00009700
//SYSPRINT DD SYSOUT=*                                                  00009800
//SYSOUT   DD SYSOUT=*                                                  00009900
//SYSDBOUT DD SYSOUT=*                                                  00010000
//SYSABOUT DD DUMMY                                                     00010100
//SYSUDUMP DD DUMMY                                                     00010200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHNB4301),DISP=SHR                   00010300
//*                                                                     00010400
//**********************************************************************00010501
//* UTILERIA   : ADUUMAIN                                              *00010601
//* OBJETIVO   : DESCARGA DE OPERAVA CAMBIOS DE LIQUIDACON DE GL       *00010701
//**********************************************************************00010801
//PHNB440A EXEC PGM=ADUUMAIN,COND=(04,LT),                              00010802
//         PARM='MXP1,PHNB440A,NEW,,MSGLEVEL(1)'                        00010803
//*                                                                     00010804
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00010805
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00010806
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00010807
//*                                                                     00010808
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMHFNB44.OPERAVA.CAMLIQ,                  00010809
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010810
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00010811
//            SPACE=(CYL,(500,250),RLSE)                                00010812
//*                                                                     00010813
//SYSTSPRT DD SYSOUT=*                                                  00010814
//SYSPRINT DD SYSOUT=*                                                  00010815
//SYSPUNCH DD SYSOUT=*                                                  00010816
//SYSCNTL  DD DUMMY                                                     00010817
//*                                                                     00010818
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHNB4401),DISP=SHR                   00010819
//*                                                                     00010820
//*--------------------------------------------------------------------*00010821
//PHNB440B EXEC PGM=ICEMAN,COND=(04,LT)                                 00010822
//*                                                                     00010823
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMHFNB44.OPERAVA.CAMLIQ,DISP=SHR          00010824
//*                                                                     00010825
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMHFNB44.OPERAVA.CAMLIQ2,                 00010826
//            DISP=(NEW,PASS),                                          00010827
//            SPACE=(CYL,(50,25),RLSE),                                 00010828
//            DCB=(LRECL=74,BLKSIZE=0,RECFM=FB,DSORG=PS),               00010829
//            UNIT=3390                                                 00010830
//*                                                                     00010831
//SYSPRINT DD SYSOUT=*                                                  00010832
//SYSOUT   DD SYSOUT=*                                                  00010833
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5101),DISP=SHR                   00010834
//*                                                                     00010835
//**********************************************************************00010840
//*                            (ZM4DH521)                              *00010841
//* OBJETIVO : GENERA REPORTE DE CAMBIOS DE LIQUIDACION                *00010842
//**********************************************************************00010850
// IF  PHNB440B.RC EQ 00 THEN                                           00010860
//PHNB4402 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010901
//*                                                                     00011001
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMHFNB44.OPERAVA.CAMLIQ,DISP=SHR          00011002
//*                                                                     00011003
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CAMB.LIQUIDA.REPO,                   00011101
//            DISP=(NEW,CATLG,DELETE),                                  00011201
//            DCB=(DSORG=PS,RECFM=FB,LRECL=182,BLKSIZE=0),              00011301
//            UNIT=3390,                                                00011401
//            SPACE=(CYL,(4,2),RLSE)                                    00011501
//*                                                                     00011601
//SYSIN    DD DUMMY                                                     00012001
//SYSTSPRT DD SYSOUT=*                                                  00013001
//SYSPRINT DD SYSOUT=*                                                  00014001
//SYSOUT   DD SYSOUT=*                                                  00015001
//SYSDBOUT DD SYSOUT=*                                                  00016001
//SYSABOUT DD DUMMY                                                     00017001
//SYSUDUMP DD DUMMY                                                     00018001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHNB4402),DISP=SHR                   00019001
//*                                                                     00020001
// ELSE                                                                 00020002
//PHIB2420 EXEC PGM=ICEGENER,COND=(04,LT)                               00020003
//*                                                                     00020004
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,                                   00020005
//            DCB=(RECFM=FB,LRECL=182)                                  00020006
//SYSUT2   DD DSN=MXCP.ZM.FIX.EBCM.CAMB.LIQUIDA.REPO,                   00020007
//            DISP=(NEW,CATLG,DELETE),                                  00020008
//            SPACE=(CYL,(4,2),RLSE),                                   00020009
//            DCB=(DSORG=PS,LRECL=182,RECFM=FB,BLKSIZE=0),              00020010
//            UNIT=3390                                                 00020020
//*                                                                     00020030
//SYSPRINT DD SYSOUT=*                                                  00020040
//SYSIN    DD DUMMY                                                     00020050
// ENDIF                                                                00020051
//*                                                                     00020060
