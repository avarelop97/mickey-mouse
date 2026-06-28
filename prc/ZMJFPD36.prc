//ZMJFPD36 PROC
//**********************************************************************
//* SISTEMA        :  GESTION INDUCIDA Y SOCIEDADES DE INVERSION       *
//*                                                                    *
//* PROCESO        :  CBJFCD36   (DISPARADOR)                          *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA GESTION Y INDUCIDA Y        *
//*                   ACTUALIZA TABLAS CUOTACC Y CARTSOC.              *
//*                                                                    *
//* NOTA           :  ESTE PROCESO UTILIZA CARTERA                     *
//*                                                                    *
//* REALIZO        :  AZERTIA S. A. DE C.V. 29 DE AGOSTO 2007          *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//**--------------------------------------------------------------------
//PJF36P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD36,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//* PROGRAMA: ZM4DS060
//* OBJETIVO: GENERA ARCHIVO PARA EL CAM
//*---------------------------------------------------------------------
//PJF36P06 EXEC PGM=IKJEFT01
//ZMS060A1 DD DSN=MXCP.ZM.WKF.SIE.ZM4DS060.PAS2,
//            DISP=(NEW,PASS,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//ZMS060A2 DD DSN=MXCP.ZM.FIX.SIE.ZM4DS060.PAS2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF36T03),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PJF36P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.SIE.ZM4DS060.PAS2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.SIE.ZM4DS060.SORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF36T04),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DS084
//* OBJETIVO: GRABA CARTERA DE FONDOS RENTA VARIABLE
//*---------------------------------------------------------------------
//PJF36P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS084A1 DD DSN=MXCP.ZM.TMP.SIE.ZM4DS060.SORT,DISP=SHR
//ZMS084A2 DD DSN=MXCP.ZM.TMP.SIE.ZM4DS084.PAS2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=334,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF36T05),DISP=SHR
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//*  OBJETIVO : ORDENA ARCHIVO DEL CAM PARA PODER COMPACTARLO          *
//**********************************************************************
//PJF36P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.SIE.ZM4DS084.PAS2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.ZM4DS095.PAS2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=334,BLKSIZE=0),
//         SPACE=(CYL,(50,25),RLSE),
//         UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJF36T06),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ198
//* OBJETIVO: GRABA CARTERA DE FONDOS RENTA VARIABLE
//*---------------------------------------------------------------------
//PJF36P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ198P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD36,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF36T01),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ205
//* OBJETIVO: GRABA CARTERA DE FONDOS DE RENTA FIJA
//*---------------------------------------------------------------------
//PJF36P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ205P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD36,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF36T02),DISP=SHR
//*--------------FIN DE PROCESO-----------------------------------------
