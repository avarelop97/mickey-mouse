//ZMJTPD03 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00041000
//*                                                                    *00042000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00043000
//*                                                                    *00044000
//* PROCESO        :  SIVAXTFF (SUBMITIDOR)                            *00045000
//*                   ZMJTPD03 (PROCEDIMIENTO)                         *00046000
//*                   OPCION SIVA : 514                                *00047000
//*                                                                    *
//* OBJETIVO       :  GENERA Y TRANSFIERE A SERVIDOR LAS COMPRAS /     *
//*                   VENTAS DE LA SERIE 'F' DE CONTARTOS OPERATIVOS DE*
//*                   FONDOS DE FONDOS.                                *
//*                                                                    *
//*                   (TRANSFERENCIA DE SIVA A SERVIDOR )              *
//*                                                                    *
//* CORRE                                                              *00049200
//* ANTES DE       :  CIERRE DE SOCIEDADES DE INVERSION                *00049300
//*                                                                    *00049400
//* DESPUES DE     :  A PETICION DEL USUARIO                           *00049500
//*                                                                    *00049600
//* PERIODICIDAD   :  DIARIO                                           *00049900
//*                                                                    *00050000
//**********************************************************************00051000
//**********************************************************************00051100
//*                      LOG DE MODIFICACIONES                         *00051200
//**********************************************************************00051300
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00051400
//*--------------------------------------------------------------------*00051500
//*      |          |       |        |                                 *00051600
//*--------------------------------------------------------------------*00051800
//*      |          |       |        |                                 *00051900
//**********************************************************************00052000
//*                                                                     00051900
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                                                                    *00065700
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00065800
//*            EN ARCHIVO                                              *00065900
//**********************************************************************00066000
//PJT03P03 EXEC PGM=ZM3DG001,                                           00066100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00066200
//*                                                                     00066300
//PI601765 DD DUMMY                                                     00066400
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.ECBP.ZMJTPD03,                        00066600
//            DISP=(NEW,CATLG,DELETE),                                  00066700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00066800
//            UNIT=3390,                                                00066900
//            SPACE=(CYL,(6,3),RLSE)                                    00067000
//*                                                                     00067100
//SYSTSPRT DD SYSOUT=*                                                  00067200
//SYSPRINT DD SYSOUT=*                                                  00067300
//SYSOUT   DD SYSOUT=*                                                  00067400
//SYSDBOUT DD SYSOUT=*                                                  00067500
//SYSABOUT DD DUMMY                                                     00067600
//SYSUDUMP DD DUMMY                                                     00068000
//*                                                                     00070000
//**********************************************************************00391400
//*                        == ZM4DJ014 ==                              *00391500
//* OBJETIVO :   CPAS/VTAS FONDOS VALOR NORMAL                         *00391600
//**********************************************************************00391800
//PJT03P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00391900
//*                                                                     00392000
//PI601765 DD DUMMY                                                     00392100
//*                                                                     00392200
//ZMJ014A1 DD DSN=MXCP.ZM.FIX.SIN.ECBP.SIVNANFF,                        00393001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00393100
//            DCB=(DSORG=PS,LRECL=248,RECFM=FB,BLKSIZE=0),              00393200
//            SPACE=(CYL,(50,25),RLSE)                                  00393300
//ZMJ014A2 DD DSN=MXCP.ZM.FIX.SIN.ECBP.SIVNAPFN,                        00393001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00393100
//            DCB=(DSORG=PS,LRECL=248,RECFM=FB,BLKSIZE=0),              00393200
//            SPACE=(CYL,(50,25),RLSE)                                  00393300
//ZMJ014A3 DD DSN=MXCP.ZM.FIX.SIN.ECBP.SIVNAPFF,                        00393001
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00393100
//            DCB=(DSORG=PS,LRECL=248,RECFM=FB,BLKSIZE=0),              00393200
//            SPACE=(CYL,(50,25),RLSE)                                  00393300
//*                                                                     00393400
//SYSTSPRT DD SYSOUT=*                                                  00393500
//SYSPRINT DD SYSOUT=*                                                  00393600
//SYSOUT   DD SYSOUT=*                                                  00393700
//SYSDBOUT DD SYSOUT=*                                                  00393800
//SYSABOUT DD DUMMY                                                     00393900
//SYSUDUMP DD DUMMY                                                     00394000
//*                                                                     00394100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJT03T02),DISP=SHR                   00394200
//*                                                                     00070000
//**********************************************************************00391400
//*                        == DMBATCH  ==                              *00391500
//* OBJETIVO :   TRANSFERENCIA DEL ARCHIVOS HOST A SERVIDOR            *00391600
//**********************************************************************00391800
//PJT03P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT03T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M J T P D 0 3                            *00020000
//**********************************************************************00010000
