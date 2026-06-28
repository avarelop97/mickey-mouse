//ZMPFVN01 PROC                                                         00010000
//**********************************************************************00041000
//*                     C A S A   D E  B O L S A                       *00042000
//*                     ========================                       *00043000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00044000
//*                                                                    *00045000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00046000
//*                                                                    *00047000
//* PROCESO        :  CBJFVN01 (SUBMITIDOR)                            *00048000
//*                   ZMPFVN01 (PROCEDIMIENTO)                         *00048100
//*                                                                    *00049000
//* OBJETIVO       :  GENERAR EL REPORTE DE FONDOS DE VALOR NORMAL DE  *00049200
//*                   SOCIEDADES DE INVERISION.                        *00049300
//* CORRE                                                              *00049400
//* ANTES          :  SIVAXFVN                                         *00049500
//*                                                                    *00049600
//* PERIODICIDAD   :  DIARIO A PETICION DEL USUARIO                    *00050100
//*                                                                    *00050200
//**********************************************************************00051100
//*                      LOG DE MODIFICACIONES                         *00051200
//**********************************************************************00051300
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00051400
//*--------------------------------------------------------------------*00051500
//*      |          |       |        |                                 *00051720
//**********************************************************************00051730
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************00051730
//PVN01P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..ZMPFVN01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//**********************************************************************00055500
//* OBJETIVO : BORRAR ARCHIVOS DE LA VALUACION DEL PROCESO.            *00055400
//**********************************************************************00055500
//PVN10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//OPEVALNO DD DSN=MXCP.ZM.FIX.ZMPFVN01.FONDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=84,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFVN01),DISP=SHR
//*                                                                     00540000
//**********************************************************************00540200
//*                   FIN DEL PROCEDIMIENTO ZMPFVN01                   *00540300
//**********************************************************************00540400
