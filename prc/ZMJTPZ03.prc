//ZMJTPZ03 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00041000
//*                                                                    *00042000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00043000
//*                                                                    *00044000
//* PROCESO        :  SIVAXTFF (SUBMITIDOR)                            *00045000
//*                   ZMJTPZ03 (PROCEDIMIENTO)                         *00046000
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
//**********************************************************************00391400
//*                        == ZM4DJ014 ==                              *00391500
//* OBJETIVO :   CPAS/VTAS FONDOS VALOR NORMAL                         *00391600
//**********************************************************************00391800
//PJT03P02 EXEC PGM=IKJEFT01                                            00391900
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
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT03T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M J T P Z 0 3                            *00020000
//**********************************************************************00010000
