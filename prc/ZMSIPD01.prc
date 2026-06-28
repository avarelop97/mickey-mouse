//ZMSIPD01 PROC
//**********************************************************************
//* SISTEMA        :  MODULO SIIE.                                     *
//*                                                                    *
//* PROCESO        :  CBSICD01                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO CON INFORMACION PARA ESPA#A       *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//* DESPUES DE     :  PTEPED04                                         *
//* REALIZO        :  MARTIN SANTOS GONZALEZ                           *
//* FECHA          :  JUNIO 2005                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO ES REINICIABLE                      *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PSI01P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','   ','   ','   ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSIPD01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//*                          == ZM4DS100 ==                            *
//* OBJETIVO : GENERA ARCHIVO                                          *
//* PASO REINICIABLE POR RESTART.                                      *
//**********************************************************************
//PSI01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS100P1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMSIPD01,DISP=SHR
//ZMS100A1 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS100,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=561,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMSITD01),DISP=SHR
