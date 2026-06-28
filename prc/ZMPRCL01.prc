//ZMPRCL01 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHIND03                                         *
//*                   INICIO DE DIA DEL SIVA.                          *
//*                                                                    *
//* OBJETIVO       :  INICIO DE DIA DE MERCADO DE CAPITALES..          *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* SUBPROCESO : (D) AL INICIO DE OPERACIONES                          *
//*              - CAPITALES                                           *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//* FECHA          :  2004/11/23                                       *
//* MODIFICO       :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//* OBJETIVO       :  SE ADICIONO EL ARCHIVO DE PARAMETROS             *
//*                :  EN EL PASO PHI03P03.                             *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHI03P28 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMPRCL01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DGT68
//* OBJETIVO: GENERAR REPORTE DE LA POSICION EN CORTO.
//* PASO REINICIABLE                                *** PROC CAPITALES *
//*---------------------------------------------------------------------
//PHI03P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGT67A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMPRCL01,DISP=SHR
//ZMGT67R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMGT67R1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//ZMGTCORT DD DSN=MXCP.ZM.FIX.E&EMP..ZMGTCORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//ZMGTDETA DD DSN=MXCP.ZM.FIX.E&EMP..ZMGTDETA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPR01T08),DISP=SHR
//**********************************************************************
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMPRCL01                      *
//**********************************************************************
