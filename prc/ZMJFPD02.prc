//ZMJFPD02 PROC
//*
//**********************************************************************
//*                                                                    *
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *
//*                                                                    *
//**********************************************************************
//*AZCS*SIVA*PENDIENTE*HPC**********************************************
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  CBJFND02                                         *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE ARCHIVO DE GRANDES CLIENTES        *
//*                   CORPORATIVOS, MERCADO DE CAPITALES               *
//*                                                                    *
//* CORRE                                                              *
//* DESPUES DE     :  PFDFDD25                                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  XXXXXXXX                                         *
//*                                                                    *
//* REALIZO        :  ASATECK S.A. DE C.V. (JLGO)                      *
//* FECHA          :  OCTUBRE DEL 2002                                 *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA QUINCENAL,         *
//*                   REQUERIMIENTO NO. 2102.                          *
//*                                                                    *
//* MODIFICACION   :                                                   *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*
//PJF02P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                        -- ZM4EGS02 --                              *
//*                                                                    *
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON GRANDES CLIENTES          *
//*                                                                    *
//* GENERA 2 TIPOS DE REGISTRO.                                        *
//*                                                                    *
//**********************************************************************
//*
//PJF02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//*
//*ZMGS02A1 DD DSN=MBVP.PE.FIX.CUENTAS.SOCINV,DISP=SHR
//ZMGS02A1 DD DSN=SIVA.SIN.FIX.CLTES.SOCIN,DISP=SHR
//*
//ZMGS02P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD02,DISP=SHR
//*
//ZMGS02A2 DD DSN=SIVA.SIN.FIX.E&EMP..CLTES.CASA,
//             DISP=(NEW,CATLG,CATLG),
//             UNIT=3390,
//             SPACE=(CYL,(6,3),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=92,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF02T01),DISP=SHR
//*
