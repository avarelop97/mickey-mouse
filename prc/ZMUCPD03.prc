//ZMUCPD03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUCCD03                                         *
//*                   CIERRE DE DIA DEL MODULO DE CONTRATOS            *
//*                                                                    *
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CONTRATOS,        *
//*                   ENVIADO POR EL USUARIO.                          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  FIN DE DIA                                       *
//*                                                                    *
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA Y SIVAXRCA           *
//*                                                                    *
//* REALIZO        :  MONICA RUBIO CONTREAS.                           *
//* FECHA          :  ABRIL 2003                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *
//*                   SIEMPRE ANTES DE TODO EL FIN DE DIA              *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUC03P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                    PROGRAMA  -- ZM4ELM01 --                        *
//*  OBJETIVO : GENERA ARCHIVO DE CLIENTES PARA ENVIO A ALTAMIRA       *
//*             PROCESO DIARIO                                         *00030024
//*             PASO REINICIABLE POR RESTART                           *00030024
//**********************************************************************
//PUC03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00030024
//PI601765 DD DUMMY
//*
//ZM4ELMP1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD03,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00070024
//SYSPRINT DD SYSOUT=*                                                  00090024
//SYSOUT   DD SYSOUT=*                                                  00100024
//*ZM4ELMA1 DD DSN=MBVP.PET.CTES.SIVA.DIARIO,                           00160002
//*M4ELMA1 DD DSN=SIVA.CON.WKF.E&EMP..CLIENTES.CASA.DIARIO,             00160002
//ZM4ELMA1 DD DSN=MXCP.ZM.WKF.E&EMP..CLIENTES.CASA.DIARIO,              00160002
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE)
//SYSDBOUT DD SYSOUT=*                                                  00110024
//SYSABOUT DD DUMMY                                                     00120024
//SYSUDUMP DD DUMMY                                                     00130024
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC03T01),DISP=SHR
//*
