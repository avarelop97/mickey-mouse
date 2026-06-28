//ZMUEPM22 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM22                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE CONSTANCIAS E.C.  DE LA EMPRESA       *
//*                PROPORCIONADA                                       *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM23                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM21                                      *
//*                                                                    *
//*   PERIODICIDAD    :  ANUAL                                         *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE22P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM22,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM3VU260  --                                 *
//*                 GENERA ESTADOS DE CUENTA                           *
//**********************************************************************
//PUE22P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//PI601765 DD DUMMY
//ZMU260A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMUEPM22,DISP=SHR
//ZMU260EC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU260R1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..TEMPORAL,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU260R2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MAXHJA,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//ZMU260R3 DD DUMMY
//ZMU260C1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDCUENTA.SRT,DISP=SHR
//ZMU260P1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM.SRT,DISP=SHR
//ZMU260D1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDIVID.SRT,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE22T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM22 SIVA MULTIEMPRESA                  *
//**********************************************************************
