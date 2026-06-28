//ZMFSFID1 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FACTSET.                                       *
//* PROCESO      : ZMFSFID1.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESO QUE CARGA LAS NOTAS7WARRANTS DE NEW EN MUV  *
//* REALIZO      : CAPGEMINI                                           *
//* FECHA        : AGOSTO 2020.                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4CFD10                                     *
//* OBJETIVO   : GUARDA NOTAS/WARRANTS CON SU CLASIFICACION Y RIESGO   *
//**********************************************************************
//ZFSFID20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCFIDE1 DD DSN=MXCP.ZM.FIX.NZMPFID1.CLSNOTAS,
//            DISP=SHR
//ZMS1FID1 DD DSN=MXCP.ZM.FIX.F&FECHA..ZMFSFID1.NOTASOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS)
//*
//ZMS2FID1 DD DSN=MXCP.ZM.FIX.F&FECHA..ZMFSFID1.NOTASNOK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,LRECL=037,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFSFID60),DISP=SHR
//*                                                                    *
//**********************************************************************
//*                    TERMINA ZMFSFID1
//**********************************************************************
