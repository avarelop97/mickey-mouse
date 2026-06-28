//ZMCFDI45  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : SIVA - MULTIEMPRESA                                  *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMCFDIC1                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERA ARCHIVO DE CANCELACION DE CONSTANCIA FISCAL ENVIADO DESDE   *
//* OPCION CF1                                                         *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHDI4502                                                *
//* PROGRAMA : IKJEFT01/ZM4CFI17                                       *
//* OBJETIVO : GENERA ARCHIVO DE CONTRATOS A CANCELAR                  *
//*====================================================================*
//ZHDI4502 EXEC PGM=IKJEFT01                                            01151027
//*
//CUENTAS  DD DSN=MXCP.ZM.FIX.EBCM.CONSTA.CANCEL.CF1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=11,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDB4502),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZHDI450A                                                *
//* OBJETIVO : ORDENA ARCHIVO DE CONTRATOS                             *
//*====================================================================*
//ZHDI450A EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CONSTA.CANCEL.CF1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CONSTA.CANCEL.CF1.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=11,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHDI450A),DISP=SHR
//*
//*====================================================================*
//* PASO     : ZHDI4501                                                *
//* PROGRAMA : IKJEFT01/ZM4CONS5                                       *
//* OBJETIVO : GENERA ARCHIVO DE CANCELACION                           *
//*====================================================================*
//ZHDI4501 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//CONSTAN  DD DSN=MXCP.ZM.FIX.EBCM.CONSTA.CANCEL.CF1.ORD,DISP=SHR
//*                                                                     01153001
//SALIDA01 DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.CONSTF.PREV.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=182,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//CUENTAE  DD DSN=MXCP.ZM.FIX.EBCM.CIFRAS.CONTROL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=37,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHDB4501),DISP=SHR                   01230041
//*
//*====================================================================*
//* PASO     : ZHDI4500                                                *
//* PROGRAMA : ZM3CAN01                                                *
//* OBJETIVO : QUITA ESPACIOS AL ARCHIVO DE CANCELACION                *
//*====================================================================*
//ZHDI4500 EXEC PGM=ZM3CAN01,COND=(4,LT)                                01151027
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.CONSTF.PREV.F&FECHA,
//            DISP=SHR
//*                                                                     01153001
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.CONSTF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),
//            DCB=(DSORG=PS,LRECL=143,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
