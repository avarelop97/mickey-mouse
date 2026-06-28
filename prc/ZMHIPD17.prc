//ZMHIPD17 PROC
//**********************************************************************
//*                   <<  MERCADO DE CAPITALES >>                      *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (BCA. PAT.).         *
//*                                                                    *
//* PROCESO        :  CBHIND17                                         *
//*                   INICIO DE DIA DE MERCADO DE CAPITALES            *
//*                   DE BANCA PATRIMONIAL.                            *
//*                                                                    *
//* OBJETIVO       :  INICIO DE DIA DE MERCADO DE CAPITALES.           *
//*                                                                    *
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//*                                                                    *
//* FECHA          :  2004/11/23                                       *
//* MODIFICO       :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *
//* OBJETIVO       :  SE ADICIONO EL ARCHIVO DE PARAMETROS             *
//*                :  EN EL PASO PHI17P09.                             *
//**********************************************************************
//* FECHA          :  2005/01/27                                       *
//* MODIFICO       :  RICARDO HARO BERNAL                              *
//* OBJETIVO       :  SE AGREGO EL PROG. ZM4DHW53 EN EL PASO PHI17P08  *
//**********************************************************************
//* SUBPROCESO : (D) AL INICIO DE OPERACIONES                          *
//*              - CAPITALES                                           *
//**********************************************************************
//*
//**********************************************************************
//*                        RECIBE PARAMETROS                           *
//**********************************************************************
//PHI17P09 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',' ',' ',)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//**********************************************************************
//* OBJETIVO    :  REINICIAR FOLIO DE ORDENES DE POSIC. PROPIA (MUV)   *
//*                OPERADAS CON OTROS INTERMEDIARIOS                   *
//*                        -- ZM4DHW53 --                              *
//**********************************************************************
//PHI17P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMHW53A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T08),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  GENERAR EL REPORTE DE LOS MOVIMIENTOS PARA EL       *
//*                FONDEO DE CONTRATOS POSICION PROPIA POR MERCADO.    *
//*                        -- ZM4DGR38 --                              *
//**********************************************************************
//PHI17P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGR38A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//ZMGR38R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T07),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  GENERAR REPORTE DE LA POSICION EN CORTO.            *
//*                        -- ZM4DGT67 --                              *
//**********************************************************************
//PHI17P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMGT67A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//ZMGT67R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T06),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  BORRA CARTERAS SIN POSICION DE MERCADO DE CAPITALES.*
//*                ACTUALIZA TABLA DE CARTERA.                         *
//*                        -- ZM4DHB47 --                              *
//**********************************************************************
//PHI17P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMHB47P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T05),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  GENERA TABLA CONDENSADA DE AUTORIZACIONES DE        *
//*                OPERACIONES POR PERFIL DE USUARIO-SUCURSAL.         *
//*                ACTUALIZA TABLA AOPERUS.                            *
//*                        -- ZM4DU651 --                              *
//**********************************************************************
//PHI17P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMU651P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T04),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  GENERACION DE CARTERA DE PROMOTORES.                *
//*                ACTUALIZA TABLA CARPROM.                            *
//*                        -- ZM4DH526 --                              *
//**********************************************************************
//PHI17P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMH526P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//ZMH526A1 DD DISP=(NEW,PASS),UNIT=3390,
//         DCB=(RECFM=FB,LRECL=61,BLKSIZE=0,DSORG=PS),
//         SPACE=(CYL,(4,2),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SORTWK02 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SORTWK03 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SORTWK04 DD UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO    :  GENERA TERMINACION DE INICIO DE DIA.                *
//*                ACTUALIZA TABLA CTLPROC.                            *
//*                        -- ZM4DH574 --                              *
//**********************************************************************
//PHI17P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765  DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//ZMH574P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHIPD17,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI17T01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*     ===   F I N    D E    P R O C E S O   ===                      *
//*     ===        C A P I T A L E S          ===                      *
//*                                                                    *
//**********************************************************************
//*  PEND           FIN DE PROCEDIMIENTO ZMHIPD17                      *
//**********************************************************************
