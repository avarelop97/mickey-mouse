//ZMUEPR28 PROC                                                         00010002
//*
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - ESTADOS DE CTA                                 *
//* PROCESO     :  ZMUEPR28.                                           *
//* PERIODICIDAD:  MENSUAL.                                            *
//* OBJETIVO    :  REPORTE DE LAS CUENTAS CONTADAS POR MEDIO DEL       *
//*                SEGMENTO TANTO DE INDRA COMO MEDC DEL ANTIGUO Y     *
//*                DEL NUEVO ESTADO DE CUENTA.                         *
//* REALIZO     :  FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA       :  29 DE MAYO DE 2014.                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- -------------------------------------*
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXX            *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO       : ZUR28T10.                                             *
//* UTILERIA   : ZM3MU521.                                             *
//* OBJETIVO   : REALIZA REPORTE DE CUENTAS ENCONTRADAS POR SEGMENTO   *
//*--------------------------------------------------------------------*
//ZUR28T10 EXEC PGM=ZM3MU521
//*
//E1MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.PISOR2,
//             DISP=SHR
//E2MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.PISOR2,
//             DISP=SHR
//E3MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.PISOR2,
//             DISP=SHR
//E4MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.PISOR2,
//             DISP=SHR
//E5MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.PISOR2,
//             DISP=SHR
//E6MEDC1   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.PISOR2,
//             DISP=SHR
//E1INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.SIIMP.INSOR2,
//             DISP=SHR
//E2INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.SIIMP.INSOR2,
//             DISP=SHR
//E3INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.SIIMP.INSOR2,
//             DISP=SHR
//E4INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.NOIMP.INSOR2,
//             DISP=SHR
//E5INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.NOIMP.INSOR2,
//             DISP=SHR
//E6INDRA   DD DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.NOIMP.INSOR2,
//             DISP=SHR
//S1MEDC1   DD DSN=MXCP.ZM.FIX.ZM3MUMI0.REPORT.MES,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//*--------------------------------------------------------------------*
//* PASO       : ZUR28T05.                                             *
//* UTILERIA   : ZM3MU522.                                             *
//* OBJETIVO   : REALIZA REPORTE DE CUENTAS ENCONTRADAS POR SEGMENTO   *
//*--------------------------------------------------------------------*
//ZUR28T05 EXEC PGM=ZM3MU522,COND=(4,LT)
//*
//E1MEDC1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPATR.SIIMP.PISOR2,
//             DISP=SHR
//E2MEDC1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.SIIMP.PISOR2,
//             DISP=SHR
//E4MEDC1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPATR.NOIMP.PISOR2,
//             DISP=SHR
//E5MEDC1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.NOIMP.PISOR2,
//             DISP=SHR
//E1INDRA   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPATR.SIIMP.INSOR2,
//             DISP=SHR
//E2INDRA   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.SIIMP.INSOR2,
//             DISP=SHR
//E4INDRA   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPATR.NOIMP.INSOR2,
//             DISP=SHR
//E5INDRA   DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.NOIMP.INSOR2,
//             DISP=SHR
//S1MEDC1   DD DSN=MXCP.ZM.FIX.ZM3MUMI1.REPORT.MES,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
