//ZMHLPE93 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<     HOST TO HOST    >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPE93.                                     *
//*                                                                    *
//*   JCL              : CBHLPD93.                                     *
//*                      SIVAXAH3.                                     *
//*                                                                    *
//*   LO EJECUTA       : A SOLICITUD DE DYD EN CASO DE CONTIGENCIA.    *
//*                                                                    *
//*   OBJETIVO         : CARGA ARCHIVO ENVIADO DE PLUS EN LA TABLA     *
//*                      (ZMDT766) DESDE UN FORMATO TXT.               *
//*                                                                    *
//*   FECHA            : 20/NOVIEMBRE/09.                              *
//*                                                                    *
//*   PERIODICIDAD     : EVENTUALMENTE.                                *
//*                                                                    *
//*   AUTOR            : DAMIAN LUNA PE#A.                             *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL27P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..S&SUC..ZMHLPE93,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//*                         -- ZM4OHG93 --                             *
//* OBJETIVO:   EFECTUA CARGA DE ARCHIVO ENVIADO DE PLUS A LA BASE DE  *
//*             DATOS EN SIVA ZMDT766.                                 *
//**********************************************************************
//PJF27P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601766  DD DUMMY
//*
//ZMOH76A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.CARGAPLU,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSABOUT DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL93T01),DISP=SHR
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETICO:   BORRADO DE ARCHIVO DE PARAMETROS.                      *
//*            'MXCP.ZM.FIX.TES.ECBP.SZPR.ZMHLPE93'                    *
//*                                                                    *
//**********************************************************************
//PJF27P00 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//ARCHSA   DD DSN=MXCP.ZM.FIX.TES.ECBP.SZPR.ZMHLPE93,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*
//**********************************************************************
//*        TERMINA PROCESO ZMHLPE93 SIVA MULTIEMPRESA                  *
//**********************************************************************
